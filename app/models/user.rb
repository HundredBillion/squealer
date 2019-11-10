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

  
end
