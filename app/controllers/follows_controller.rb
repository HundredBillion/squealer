class FollowsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    flash[:notice] = "You are now following this person!"
    redirect_to users_home_path
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    flash[:notice] = "You have stopped following this person!"
    redirect_to users_home_path
  end
end
