
class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])   
  end

  def create
   @comment = Comment.create(params[:comment])
   redirect_to posts_path
  end

  def update
  end

  def destroy
  end
end
