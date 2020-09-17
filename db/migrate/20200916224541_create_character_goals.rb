class CreateCharacterGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :character_goals do |t|
      t.integer :player_notebook_id
      t.string :title

      t.timestamps
    end
  end
end
