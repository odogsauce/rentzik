class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :instrument

  validates :begin_at, presence: true
  validates :end_at, presence: true
end
