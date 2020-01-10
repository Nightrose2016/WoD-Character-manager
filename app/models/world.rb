class World < ApplicationRecord
    has_many :characters
    has_many :users, through: :characters
    
    scope :ordered_by_name, -> { order(name: :asc) }
end