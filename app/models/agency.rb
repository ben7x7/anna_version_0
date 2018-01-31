class Agency < ApplicationRecord

has_many :employees
has_many :services

validates :brand, presence: true

end
