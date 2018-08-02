class Family < ApplicationRecord

  has_many :children
  has_many :parents
  has_many :hosts, through: :children
  has_many :guests, through: :children

  has_many :active_playdates, through: :children
  has_many :passive_playdates, through: :children

  has_secure_password
  validates :title, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
  validates :password, length: {in: 5..15}

  def formatted_active_playdates
    self.active_playdates.map(&:format)
  end

  def formatted_passive_playdates
    self.active_playdates.map(&:format)
  end

end
