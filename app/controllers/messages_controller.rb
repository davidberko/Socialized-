class MessagesController < ApplicationController
  def index
<<<<<<< HEAD
    @messages = Message.all
  end

  def new
    @message = Message.new(user_id: current_user.id)
  end

  def create
    @message = Message.create(params[:message])
    redirect_to messages_path
  else
    "new"
  end
end

  def update
    @message = Message.find(params[:id]
      @message.update_attributes(params[:message])
      redirect_to messages_path
  end

  def delete
    @message = Message.find(params[:id])
    @message.delete
    redirect_to messages_path
=======
  end

  def new
  end

  def create
  end

  def destroy
>>>>>>> e8bfc8bd6f8e5e988f57cea70e4df5dc53d5406c
  end
end
