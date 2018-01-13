class Comment < ApplicationRecord
	has_many :comment_posts
	has_many :posts, through: :comment_posts

	validates :title, presence: true
	validates :title, length: { minimum: 3 }   
	validates :content, presence: true
	validates :content, length: { minimum: 15 }   

end
