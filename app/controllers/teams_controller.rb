class TeamsController < ApplicationController
  skip_forgery_protection only: %i[create]

  # GET /teams
  def index
    @teams = Team.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @teams }
    end
  end

  # POST /teams
  def create
    employees = employees_params
      .map { |employee_params| Employee.new(employee_params) }

    team = Team.new(team_params.merge(employees: employees))

    if team.save
      render json: team
    else
      render json: { error: team.errors.messages },
             status: :unprocessable_entity
    end
  end

  def show
  end

  def update
  end

  private

  def team_params
    params.require(:team).permit(:name, :active)
  end

  def employees_params
    params
      .require(:team)
      .permit(employees: %i[email first_name last_name])[:employees]
  end
end
