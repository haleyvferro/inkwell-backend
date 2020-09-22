class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username
  has_many :character_notebooks
  has_many :game_master_notebooks
  has_many :game_creations
  has_many :games
end
