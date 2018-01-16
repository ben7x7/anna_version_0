class Service < ApplicationRecord
  belongs_to :agency
  has_many :bookings

  validates :activity, uniqueness: true
end
