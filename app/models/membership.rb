# == Schema Information
#
# Table name: memberships
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :bigint
#  team_id     :bigint
#
# Indexes
#
#  index_memberships_on_employee_id  (employee_id)
#  index_memberships_on_team_id      (team_id)
#
# Foreign Keys
#
#  fk_rails_...  (employee_id => employees.id)
#  fk_rails_...  (team_id => teams.id)
#
class Membership < ApplicationRecord
  belongs_to :team
  belongs_to :employee
end
