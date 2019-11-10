class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :fullname, presence: true, length: {maximum: 50}

  has_many :squeals
  #for the act_as_follower gem
  acts_as_followable
  acts_as_follower

  def follow
    @user = User.find(params[:id])
    @current_user.follow(@user)
    @follow = Follow.find_by(follower: @current_user, followable:@user)
    respond_to :js
  end

  def unfollow
    @current_user.stop_following(@user)
    respond_to :js
  end
  
end
