class FollowsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    flash[:notice] = "You are now following this person!"
    redirect_to users_explore_path
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    redirect_to users_explore_path
  end
end
