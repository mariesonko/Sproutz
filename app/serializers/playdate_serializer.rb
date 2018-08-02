class PlaydatesSerializer < ActiveModel::Serializer
  belongs_to :guest, class_name: "Child", optional: true
  belongs_to :host, class_name: "Child"
  belongs_to :event

  attributes :id, :military_start_time, :military_end_time
end
