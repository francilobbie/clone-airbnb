class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, presence: true

  has_many :reviews, as: :reviewable

  has_many :favorites, dependent: :destroy
  has_many :favorited_users, through: :favorites, source: :user

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

  def default_photo
    # if photos.attached?
      photos.first
    # else
      # "https://res.cloudinary.com/dge8yully/image/upload/v1679510413/development/ayd41r0slcn6ev842529lhtx1h37.jpg"
    # end
  end



  monetize :price_cents, allow_nil: true

  has_many_attached :photos, dependent: :destroy

  # def average_rating
  #   reviews.average(:rating).to_i
  # end

end
