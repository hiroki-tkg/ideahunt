class Post < ApplicationRecord
	has_many :category_posts
	has_many :posts, through: :category_posts

	has_many :comment_posts
	has_many :comments, through: :comment_posts
end
