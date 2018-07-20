class ChildSerializer < ActiveModel::Serializer
  has_many :playdates
  attributes :id
end
