# == Schema Information
#
# Table name: teams
#
#  id         :bigint           not null, primary key
#  active     :boolean          default(TRUE), not null
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Team < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :employees, through: :memberships
end
