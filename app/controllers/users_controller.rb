class UsersController < ApplicationController
  
  def landing_page
  end

  def home
    @users = User.all
    @squeal = Squeal.new
    @my_squeals = Squeal.i_have_written(current_user)
    @squeals_of_users_i_am_following = []
    
    @users_i_am_following = current_user.all_following
    @users_i_am_following.each do |u|
      tsqueal = Squeal.where(user_id:u.id)
      @squeals_of_users_i_am_following += tsqueal if tsqueal
    end
  
    @my_squeals_plus_users_i_am_following_squeals = (@my_squeals + @squeals_of_users_i_am_following)
    @collected_and_sorted_squeals = @my_squeals_plus_users_i_am_following_squeals.sort_by(&:created_at)
   
  end

  def explore
    @squeals = Squeal.where.not(user_id:current_user.id).order("created_at DESC")
  end


  
end
