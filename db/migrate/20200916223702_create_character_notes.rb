class CreateCharacterNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :character_notes do |t|
      t.integer :character_notebook_id
      t.string :title
      t.text :content
      t.boolean :visible_to_other_players
      t.float :amount_spent
      t.float :amount_earned

      t.timestamps
    end
  end
end
