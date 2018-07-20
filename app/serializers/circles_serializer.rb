class CirclesSerializer < ActiveModel::Serializer
  has_many :events
  attributes :id

end
