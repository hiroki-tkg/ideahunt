class Post < ApplicationRecord
	has_many :category_posts
	has_many :posts, through: :category_posts

	validates :title, presence: true, length: { minimum: 10}
	validates :content, presence: true, length: { minimum: 10}
end
