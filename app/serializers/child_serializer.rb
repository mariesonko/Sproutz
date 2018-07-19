class ChildSerializer < ActiveModel::Serializer
  has_many :circles
  belongs_to :family
  attributes :id
end
