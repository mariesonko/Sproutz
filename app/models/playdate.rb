class Playdate < ApplicationRecord

  belongs_to :guest, class_name: "Child", optional: true
  belongs_to :host, class_name: "Child"
  belongs_to :event
  validates :host_id, presence: true
  validates :date, presence: true
  validates :startTime, presence: true
  validates :endTime, presence: true

end
