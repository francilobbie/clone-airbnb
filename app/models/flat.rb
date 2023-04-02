class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, presence: true

  has_many :reviews, as: :reviewable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode

  def address_by_coordinates
    # Geocoder.search([latitude, longitude]).first.address
    "#{Geocoder.search([latitude, longitude]).first.city}, " + "#{Geocoder.search([latitude, longitude]).first.state}, " + Geocoder.search([latitude, longitude]).first.country.to_s
  end

  def address_by_coordinates_for_index
    "#{Geocoder.search([latitude, longitude]).first.city}, " + Geocoder.search([latitude, longitude]).first.country.to_s
  end



  monetize :price_cents, allow_nil: true
  # monetize :nightly_price_cents, allow_nil: true
  has_many :photos, dependent: :destroy

  has_many_attached :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true


  has_many :favorites, dependent: :destroy
  accepts_nested_attributes_for :photos_attachments, allow_destroy: true

  # def average_rating
  #   reviews.average(:rating).to_i
  # end

end
