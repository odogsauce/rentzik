class Instrument < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :bookings
  validates :description, presence: true
  validates :unit_price, presence: true
  validates :category, presence: true, inclusion: { in: ["vents", "cordes", "percussions"] }
  include AlgoliaSearch
    algoliasearch  do
    attributes :description, :category
    searchableAttributes ['unordered(description)', 'category']
  end


end
