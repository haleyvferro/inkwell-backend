class GameMasterNotebookSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :game_master_notes
  # has_many :game_master_notes
  def game_master_notes
    self.object.game_master_notes.map do |note|
      {
        id: note.id,
        game_master_notebook_id: note.game_master_notebook_id,
        title: note.title,
        content: note.content,
        visible_to_players: note.visible_to_players
      }
    end
  end
end
