class CirclesSerializer < ActiveModel::Serializer
  belongs_to :child
  belongs_to :playdates
  attributes :id

end
