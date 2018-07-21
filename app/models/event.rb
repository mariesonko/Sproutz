class Event < ApplicationRecord
  has_many :playdates
  has_many :children, through: :playdates

end
