class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :price, presence: true
end
