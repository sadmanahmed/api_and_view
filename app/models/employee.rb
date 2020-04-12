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
  validates :email, uniqueness: true
end
