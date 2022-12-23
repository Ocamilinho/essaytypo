class Question < ApplicationRecord
	validates :title, presence: true, length: {minimum: 8}
	validates :description, presence: true, length: {maximum: 80}
	validates :problem, presence: true, length: {maximum: 255}
end
