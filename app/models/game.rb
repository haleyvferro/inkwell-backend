class Game < ApplicationRecord
    has_many :game_players
    has_many :users, through: :game_players
    belongs_to :game_master, class_name: 'User', foreign_key: :gm_id
end
