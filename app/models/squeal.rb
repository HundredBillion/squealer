class Squeal < ApplicationRecord
  belongs_to :user
  validates :comment, presence: true, length: { in: 1..140 }
end
