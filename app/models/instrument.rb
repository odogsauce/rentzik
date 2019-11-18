class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :unit_price, presence: true
  validates :category, presence: true, inclusion: { in: ["vents", "cordes", "percussions"] }
end
