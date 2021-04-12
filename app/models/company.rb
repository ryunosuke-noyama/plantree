class Company < ApplicationRecord
  has_secure_password(validations: false)
  has_many :members
  has_many :teams
end
