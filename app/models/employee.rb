# == Schema Information
#
# Table name: employees
#
#  id         :bigint           not null, primary key
#  email      :string           default(""), not null
#  first_name :string           default(""), not null
#  last_name  :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_employees_on_email  (email) UNIQUE
#
class Employee < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :teams, through: :memberships

  validates :email, presence: true, uniqueness: true
end
