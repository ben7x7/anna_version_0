class Agency < ApplicationRecord

has_many :services

validates :brand, presence: true

end
