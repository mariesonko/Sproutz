class FamilySerializer < ActiveModel::Serializer
  has_many :children
  has_many :parents
  has_many :playdates, through: :children
  attributes :id
end
