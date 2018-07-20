class ParentsSerializer < ActiveModel::Serializer
  has_many :children, through: :family
  attributes :id
end
