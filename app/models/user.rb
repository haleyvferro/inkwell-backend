class User < ApplicationRecord
    has_many :game_creations, class_name: 'Game', foreign_key: :gm_id
    has_many :game_players
    has_many :games, through: :game_players
    has_many :character_notebooks
    has_many :game_master_notebooks

    has_secure_password
end
