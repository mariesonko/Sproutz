class CirclesSerializer < ActiveModel::Serializer
  has_many :events
  has_many :playdates, through :events
  has_many :children, through :playdates 
  attributes :id

end
