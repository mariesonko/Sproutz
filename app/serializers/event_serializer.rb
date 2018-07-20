class EventSerializer < ActiveModel::Serializer
  has_many :playdates
  attributes :id
end
