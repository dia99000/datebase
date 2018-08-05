class Item < ApplicationRecord
	belongs_to :plan
	has_many :spots
end
