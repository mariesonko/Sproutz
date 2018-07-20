class Playdate < ApplicationRecord
    belongs_to :child
    belongs_to :event
end
