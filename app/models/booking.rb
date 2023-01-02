class Booking < ApplicationRecord
  belongs_to :flat
  belongs_to :user

  validates :date, presence: true
end
