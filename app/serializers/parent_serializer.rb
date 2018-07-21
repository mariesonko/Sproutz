class ParentsSerializer < ActiveModel::Serializer
  belongs_to :family
  has_many :children, through: :family

  attributes :id
end
