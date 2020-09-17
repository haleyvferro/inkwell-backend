class CharacterNotebook < ApplicationRecord
    belongs_to :user
    has_many :character_notes
    has_many :character_goals
end
