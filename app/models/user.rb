class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attachment :photo

  has_many :employees


  USER_TYPES = ["client", "employee", "manager"]
  validates :user_type, inclusion: {in: USER_TYPES}

  validates :first_name, presence: true
  validates :last_name, presence: true

  CAPACITIES = ["Full", "Level 1", "Level 2", "Level 3", "Under tutel"]
  validates :capacity, inclusion: {in: CAPACITIES}

end
