class SessionsController < ApplicationController
  
  def new
  end

def create
  user = User.authenticate(params[:email], params[:password])
    if session[:user_id] = user.id
    redirect_to current_user, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to '/sessions/new', :notice => "Logged out!"
  end
end