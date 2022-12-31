class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, presence: true

  has_many :reviews, as: :reviewable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  monetize :price_cents, allow_nil: true

  has_one_attached :photo, dependent: :destroy

  # def average_rating
  #   reviews.average(:rating).to_i
  # end

end
