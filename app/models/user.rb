class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :instruments
  has_many :bookings, through: :instruments

  validates :username, presence: true
  validates :email, presence: true, format: { with: /\A.*@.*\.*\z/ }, uniqueness: true
  validates :password, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
