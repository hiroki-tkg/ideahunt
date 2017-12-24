class PostsController < ApplicationController

	# before_action :set_post

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
	  		flash[:notice] = 'success!'
		  	redirect_to action: 'apply'
	  	else
	  		flash[:notice] = 'Fail'
	  		redirect_to action: 'apply'
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

	# Votingに関して
	def like
	  	@post = Post.find(params[:id])			
		@post.liked_by current_user
		redirect_to @post, notice: "You liked this!"
	end

	def dislike
		@post.disliked_by current_user
		redirect_to @post, notice: "You disliked this!"
	end

	def unvote
		@post.unvote_by current_user
		redirect_to @post, notice: "You unvoted this!"
	end	

	private
	  	def post_params
		  	params.require(:post).permit(:title,:content,:industry)
	  	end

end
