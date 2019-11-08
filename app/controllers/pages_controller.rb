class PagesController < ApplicationController
  def home
    # @squeal = Squeal.order("Random()").first
    @users = User.all
    @squeal = Squeal.new

    @squeals = Squeal.where(user_id: current_user)
  end

  def show
  end
end
