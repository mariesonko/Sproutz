class Child < ApplicationRecord

  belongs_to :family
  has_many :parents, through: :family

  has_many :events, through: :playdates

  has_many :active_playdates,  class_name: "Playdate",
                                   foreign_key: "host_id",
                                   dependent:   :destroy

  has_many :passive_playdates, class_name:  "Playdate",
                                   foreign_key: "guest_id",
                                   dependent:   :destroy

  has_many :guests, through: :active_playdates
  has_many :hosts, through: :passive_playdates

  validates :childFirstName, presence: true
  validates :childLastName, presence: true

end
