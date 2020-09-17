class CreateGameMasterNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :game_master_notes do |t|
      t.integer :gm_notebook_id
      t.string :title
      t.text :content
      t.boolean :visible_to_players

      t.timestamps
    end
  end
end
