class Comment < ApplicationRecord
	has_many :comment_posts
	has_many :posts, through: :comment_posts
end
