class Plan < ApplicationRecord
	belongs_to :user
	has_many :reviews
	has_many :items

	paginates_per 5

	def self.search_title(keyword)
		if keyword
			Plan.where('title LIKE(?)', "%#{keyword}%")
					.includes(:user)
					.order(created_at: :desc)
		else #Controllerのパラメーターが空の時
			Plan.includes(:user)
					.order(created_at: :desc)
		end
	end
end
