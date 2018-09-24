class Post < ApplicationRecord
	belongs_to :user
	validates :content, length: { maximum: 500 }, presence: true
end
