class Post < ApplicationRecord
	belongs_to :user
	validates :content, length: { maximum: 500 }, presence: true
	validates :user_id, presence: true
	default_scope -> { order(created_at: :desc) }
end
