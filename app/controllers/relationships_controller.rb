class RelationshipsController < ApplicationController

  def create
    user = User.find(params[:relationship][:requested_id])
    current_user.request!(user)
    redirect_to user
    flash[:success] =  "You are now friends"
  end

  def destroy
    user = Relationship.find(params[:id]).requested
    current_user.unrequest!(user)
    redirect_to user
  end
end
