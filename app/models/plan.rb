class Plan < ApplicationRecord
	belongs_to :user
	has_many :reviews
	has_many :items

	paginates_per 5
end
