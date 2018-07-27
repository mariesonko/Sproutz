class Parent < ApplicationRecord

  belongs_to :family
  has_many :children, through: :family

    validates :email, presence: true
  end
