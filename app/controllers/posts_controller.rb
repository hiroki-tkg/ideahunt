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

	def edit
	  	@post = Post.find(params[:id])	
	end

	def create
	  	@post = Post.new(post_params)
	  	if @post.save
		  	redirect_to action: 'apply', notice: 'success!'
	  	else
	  		redirect_to action: 'apply', notice: 'fail!'	  		
	  	end	
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to controller: 'admins', action: 'index'
		else
			render 'edit'
		end
	end
	
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to controller: 'admins', action: 'index'
	end

	private
	  	def post_params
		  	params.require(:post).permit(:title,:content,:industry)
	  	end

end
