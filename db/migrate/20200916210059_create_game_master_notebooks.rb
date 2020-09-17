class CreateGameMasterNotebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :game_master_notebooks do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :name

      t.timestamps
    end
  end
end
