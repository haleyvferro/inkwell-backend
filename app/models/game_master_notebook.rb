class GameMasterNotebook < ApplicationRecord
    belongs_to :user
    belongs_to :game
    has_many :game_master_notes
end
