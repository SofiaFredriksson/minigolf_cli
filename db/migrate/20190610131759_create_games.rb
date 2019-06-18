class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :score 
      t.integer :player_id
    end 
  end
end
