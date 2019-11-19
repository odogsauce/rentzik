class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :instruments
  has_many :bookings, through: :instruments

  validates :username, presence: true
  validates :email, presence: true, format: { with: /\A.*@.*\.*\z/ }, uniqueness: true
  validates :password, presence: true
end
