class RelationshipsController < ApplicationController

  def create
    user = User.find(params[:relationship][:requested_id])
    current_user.request!(user)
    flash[:success] =  "You are now friends with #{user.name} :)"
    redirect_to user
  end

  def destroy
    user = Relationship.find(params[:id]).requested
    current_user.unrequest!(user)
    flash[:success] =  "You are no longer friends with #{user.name} =("
    redirect_to user
  end
end
