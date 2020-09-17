class GamePlayer < ApplicationRecord
    belongs_to :game_player
    belongs_to :user
end
