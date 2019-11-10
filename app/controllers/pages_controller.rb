class PagesController < ApplicationController
  def home
    # @squeal = Squeal.order("Random()").first
    @users = User.all
    @squeal = Squeal.new
    @squeals = Squeal.all
    @my_squeals = Squeal.where(user_id: current_user).order("created_at DESC")
  end

  def show
  end
end
