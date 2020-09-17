class GameMasterNotebook < ApplicationRecord
    belongs_to :user
    has_many :game_master_notes
end
