class PostsController < ApplicationController
  

  def index
     @posts = Post.all
  end

  def new
    @post = Post.new(user_id: current_user.id)
  end

  def show
    @posts = Post.find(params[:id])
  end

  def create
    if @post = Post.create(params[:post])
      redirect_to posts_path
    else
      render :new
    end
  end
  
  def edit
    @post = Post.find(params[:id],
                      params[:content])
    
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
      redirect_to posts_path
   end

  def destroy
    @post = Post.find(params[:id])
    if @post.delete
      redirect_to posts_path
  end
 end
end

  
