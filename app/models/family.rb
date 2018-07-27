class Family < ApplicationRecord
  has_many :children
  has_many :parents
  has_many :playdates, through: :children

  has_secure_password
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password, length: {in: 5..15}
end
