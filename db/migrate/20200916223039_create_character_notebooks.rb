class CreateCharacterNotebooks < ActiveRecord::Migration[6.0]
  def change
    create_table :character_notebooks do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :name
      t.float :amount_total_earned
      t.float :amount_existing
      t.float :amount_total_spent

      t.timestamps
    end
  end
end
