class CommentsController < ApplicationController
    before_action :get_current_post
    before_action :authenticate_user!

	def create
		 @post = Post.find(params[:post_id])
	     @comment = @post.comments.create(comment_params)
	     redirect_to post_path(@post)
	end

	protected

		def comment_params
			params.require(:comment).permit(:body)
		end

		def get_current_post
			@post = Post.find(params[:post_id])
		end
end
