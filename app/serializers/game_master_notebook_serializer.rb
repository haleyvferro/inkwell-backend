class GameMasterNotebookSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :game_master_notes
  # has_many :game_master_notes
  def game_master_notes
    self.object.game_master_notes.map do |note|
      {
        gm_note_id: note.id,
        gm_note_title: note.title,
        gm_note_content: note.content,
        visible_to_players: note.visible_to_players
      }
    end
  end
end
