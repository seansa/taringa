class PostsController < ApplicationController
	before_action :authenticate_user!

	expose(:posts, ancestor: :current_user)
	expose(:post, attributes: :post_params)
	expose(:comment, attributes: :current_user)

	def index
	end

	def new
	end

	def show
	end

	def create
		if post.save
			redirect_to posts_path
		else
			render :new
		end
	end
	protected

	def post_params
		params.require(:post).permit(:title, :body, :tag_list)
	end

	#comentarios con expose.
	#Implementar ActiveAdmin para listar Usuarios y Post.
end
