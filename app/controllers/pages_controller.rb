class PagesController < ApplicationController
  def home
    # @squeal = Squeal.order("Random()").first
    @users = User.all
  end

  def show
  end
end
