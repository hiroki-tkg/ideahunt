class PostsController < ApplicationController

	def index
		@posts = Post.all.order(created_at: 'desc')
	end

	def show
		@post = Post.find(params[:id])		
	end

	def apply
	  	@post = Post.new		
	end

	def create
	  	@post = Post.new(post_params)
		# binding.pry
	  	if @post.save
		  	redirect_to action: 'apply', notice: 'success!'
	  	else
	  		redirect_to action: 'apply', notice: 'fail!'	  		
	  	end	
	end

	private
	  	def post_params
		  	params.require(:post).permit(:title,:content)
	  	end

end
