class Playdate < ApplicationRecord

  belongs_to :guest, class_name: "Child", optional: true
  belongs_to :host, class_name: "Child"
  belongs_to :event
  validates :host_id, presence: true
  validates :date, presence: true
  validates :startTime, presence: true
  validates :endTime, presence: true

  def format
    {
      host_id: self.host_id,
      guest_id: self.guest_id,
      event_id: self.event_id,
      date: self.date,
      startTime: self.startTime,
      endTime: self.endTime,
      military_end_time: self.military_end_time,
      military_start_time: self.military_start_time,
      created_at: self.created_at,
      updated_at: self.updated_at
    }
  end

  def military_end_time
    if self.endTime.include?("am")
      self.endTime[0...-2]
    else
      string = self.endTime[0...-2]
      split_str = string.split(":")
      updated = split_str[0].to_i + 12
      "#{updated}:#{split_str[1]}"
    end
  end

  def military_start_time
    if self.startTime.include?("am")
      self.startTime[0...-2]
    else
      string = self.startTime[0...-2]
      split_str = string.split(":")
      updated = split_str[0].to_i + 12
      "#{updated}:#{split_str[1]}"
    end
  end

end
