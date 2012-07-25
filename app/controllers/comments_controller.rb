class CommentsController < ApplicationController
	def create
		@posts = Post.find(params[:post_id])
    @comment = @posts.comments.create(params[:comment])
    redirect_to post_path(@posts)
	end
end
