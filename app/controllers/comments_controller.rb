class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new(user_id: current_user.id)
  end

  def create
    @comment = Comment.create(params[:comment])
    redirect_to posts_path(current_user)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
