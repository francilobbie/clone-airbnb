class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  monetize :price_cents, allow_nil: true

  has_many_attached :photos, dependent: :destroy

end
