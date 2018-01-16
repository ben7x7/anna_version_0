class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :user

  validates :date, presence: true
  validates :user, presence: true
  validates :service, presence: true
end
