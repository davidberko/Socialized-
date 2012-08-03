class MessagesController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @messages = @user.messages
    flash[:success] = "Welcome to the inbox!"
  end

  def new
     @user = User.find(params[:user_id])
     @message = Message.new(user_id: current_user.id)
  end

  def create
    @user = User.find(params[:user_id])
    @message = Message.create(params[:message].merge({user_id: @user.id, sender_id: current_user.id}))
    if current_user
      redirect_to user_path(current_user)
    else
      redirect_to user_messages_path(@user)
    end
  end
  
  def show
    @user = User.find(params[:user_id])
    @message = Message.find(params[:id])
  end

  def edit
    @message = Message.find(params[:id],
                            params[:body])
  end

  def update
    @message = Message.find(params[:id])
    @message.update_attributes(params[:message])
    redirect_to messages_path
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to messages_path(current_user)
    end
  end

