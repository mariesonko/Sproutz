class Family < ApplicationRecord
  has_many :children
  has_many :parents
  has_many :playdates, through: :children

end
