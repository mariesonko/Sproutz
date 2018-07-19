class ParentsSerializer < ActiveModel::Serializer
  belongs_to :family
  attributes :id
end
