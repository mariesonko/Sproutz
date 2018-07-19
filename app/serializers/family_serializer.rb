class FamilySerializer < ActiveModel::Serializer
  has_many :parents
  has_many :children
  attributes :id
end
