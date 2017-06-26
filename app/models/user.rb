
class User < ApplicationRecord
	has_many :comments
	  has_secure_password

	  validates :email, presence: true, uniqueness: true
	  validates :password, length: {in: 6..10}


end
