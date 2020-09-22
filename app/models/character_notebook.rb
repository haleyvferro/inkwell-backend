class CharacterNotebook < ApplicationRecord
    belongs_to :user
    belongs_to :game
    has_many :character_notes
    has_many :character_goals
end
