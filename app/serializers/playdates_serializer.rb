class PlaydatesSerializer < ActiveModel::Serializer
  has_many :circles
  attributes :id
end
