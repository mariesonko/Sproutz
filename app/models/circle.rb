class Circle < ApplicationRecord
  has_many :events
  has_many :playdates, through :events
  has_many :children, through :playdates 
end
