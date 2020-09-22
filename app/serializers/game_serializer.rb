class GameSerializer < ActiveModel::Serializer
  attributes :id, :gm_id, :game_name, :game_description
  has_many :character_notebooks
  has_one :game_master_notebook
  belongs_to :game_master
  # has_many :character_notes, through: :character_notebooks

  # def characters
  #   self.object.character_notebooks.map do |character|
  #     {
  #       character_user_id: character.user_id,
  #       character_game_id: character.game_id,
  #       character_name: character.name,
  #       character_amount_total_earned: character.amount_total_earned,
  #       character_amount_existing: character.amount_existing,
  #       character_amount_total_spent: character.amount_total_spent,
  #       # character_notes: character.notes
  #     }
  #   end
  # end
    
      # def players
      #   self.object.users.map do |user|
      #     {
      #       player_id: user.id
      #       player_email: user.email
      #       player_username: user.username
      #     }
      #   end
      # end
    
  end
