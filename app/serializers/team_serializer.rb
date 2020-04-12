class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :active

  has_many :employees do
    object.employees.map do |employee|
      {
        employee.email => "#{employee.first_name} #{employee.last_name}"
      }
    end
  end
end
