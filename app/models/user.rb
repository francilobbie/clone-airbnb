class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :flats, dependent: :destroy
  has_many :flats, through: :bookings
  has_many :reviews, through: :flats, dependent: :destroy

  has_many :favorites, dependent: :destroy
  has_many :favorited_flats, through: :favorites, source: :flat
end
