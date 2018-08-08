class Plan < ApplicationRecord
	belongs_to :user
	has_many :reviews
	has_many :items

	paginates_per 5

# 	def self.search(search)
# 		if search #Controllerのパラメーターが空の時
# 			Plan.where('title LIKE(?)', "%#{search}%").includes(:user).order(created_at: :desc).page(params[:page])
# 		else
# 			Plan.includes(:user).order(created_at: :desc).page(params[:page])
# 		end
# 	end
end
