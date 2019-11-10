class Squeal < ApplicationRecord
  belongs_to :user
  validates :comment, presence: true, length: { in: 1..140 }

  scope :i_have_written, -> (current_user) {where(user_id: current_user).order("created_at DESC")}

  # def i_have_written(user_id)
  #   self.where(user_id: user_id).order("created_at DESC")
  # end
end
