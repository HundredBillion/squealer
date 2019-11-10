class UsersController < ApplicationController
  def home
    @users = User.all
    @squeal = Squeal.new
    @my_squeals = Squeal.i_have_written(current_user)
    @users_i_am_following = current_user.all_following
    @squeals_of_users_i_am_following = []
    @users_i_am_following.each do |u|
      tsqueal = Squeal.where(user_id:u.id)
      @squeals_of_users_i_am_following += tsqueal if tsqueal
    end
   
  end

  def explore
    @squeals = Squeal.where.not(user_id:current_user.id).order("created_at DESC")
  end


  
end
