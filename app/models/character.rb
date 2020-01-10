class Character < ApplicationRecord
    belongs_to :user
    belongs_to :world
    
    scope :ordered_by_name, -> { order(character_name: :asc) }
end