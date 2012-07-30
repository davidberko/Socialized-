class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id], params[:relationship])
  end

  def new
    @user = User.new(params[:user])
  end

  def create
    @user = User.new(params[:user])
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
 end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
   @user.update_attributes(params[:user])
    end
  end


