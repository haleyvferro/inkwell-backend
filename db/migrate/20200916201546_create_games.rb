class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :gm_id
      t.string :game_name
      t.text :game_description

      t.timestamps
    end
  end
end
