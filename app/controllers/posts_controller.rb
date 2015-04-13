class PostsController < ApplicationController
	#before_action :find_post, only: [:show, :edit, :update, :destroy]
	#before_action :authenticate_user!, :except => [:index, :show]
	
	def index
		#@posts = Post.order('created_at DESC').all
		#@posts = Post.search(params[:search])
		@posts = Post.search Riddle.escape(params[:search].to_s)
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(params[:post])
		if @post.save
			redirect_to @post, notice: 'Post was successfully created.'
		else
			render action: "new"
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post])
			redirect_to @post
		else
			render action: 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end

	#private
	#def find_post
	#	@post = Post.find(params[:id])		
	#end

	#def post_params
	#	params.require(:post).permit(:title, :content)
	#end
end
