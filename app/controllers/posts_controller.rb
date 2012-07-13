class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @posts = Post.new(params[:post])
  end

  def show
    @posts = Post.find(params[:id])
  end

  def create
    @posts = Post.create[params[:post]]
    @post.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
