class PlaydatesSerializer < ActiveModel::Serializer
  belongs_to :child
  belongs_to :event
  belongs_to :circle
  attributes :id
end
