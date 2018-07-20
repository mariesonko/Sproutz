class Playdate < ApplicationRecord
    belongs_to :child
    belongs_to :event
    belongs_to :circle
end
