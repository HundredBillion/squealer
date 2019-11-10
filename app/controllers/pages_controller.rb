class PagesController < ApplicationController
  def home
    @users = User.all
    # @following_squeals = Squeal.where(following:true)
    @squeal = Squeal.new
    @my_squeals = Squeal.where(user_id: current_user).order("created_at DESC")
  end

  def explore
    @squeals = Squeal.all
  end
end
