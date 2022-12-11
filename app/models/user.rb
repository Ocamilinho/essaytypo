class User < ApplicationRecord
	has_many :question
	has_secure_password
	VALID_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 }, format: {with: VALID_REGEX},uniqueness: { case_sensitive: true }
	validates :password, presence: true, length: {minimum: 8}
end
