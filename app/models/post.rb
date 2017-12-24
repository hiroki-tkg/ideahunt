class Post < ApplicationRecord
	has_many :category_posts
	has_many :posts, through: :category_posts

	has_many :comment_posts
	has_many :comments, through: :comment_posts

	validates :title, presence: true
	validates :title, length: { minimum: 3 }   
	validates :content, presence: true
	validates :content, length: { minimum: 3 }   

	:acts_as_votable
end
