class EventSerializer < ActiveModel::Serializer
  has_many :playdates
  has_many :children, through: :playdates
  attributes :id
end
