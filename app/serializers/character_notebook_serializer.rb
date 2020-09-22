class CharacterNotebookSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :name, :amount_total_earned, :amount_existing, :amount_total_spent, :character_notes, :character_goals
  # has_many :character_notes
  # has_many :character_goals
  def character_notes
    self.object.character_notes.map do |note|
      {
        c_note_id: note.id,
        c_note_title: note.title,
        c_note_content: note.content,
        visible_to_other_players: note.visible_to_other_players,
        amount_spent: note.amount_spent,
        amount_earned: note.amount_earned
      }
    end
  end

  def character_goals
    self.object.character_goals.map do |goal|
      {
        goal_id: goal.id,
        goal_title: goal.title
      }
    end
  end

end
