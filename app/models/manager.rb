class Manager < ApplicationRecord
	has_many :spaces

	has_secure_password

	  validates :email, presence: true, uniqueness: true
	  validates :password, length: {in: 6..10}
end
