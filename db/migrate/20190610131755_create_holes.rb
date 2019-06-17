class CreateHoles < ActiveRecord::Migration[5.0]
  def change
    create_table :holes do |t| 
      t.integer :par 
      t.integer :stroke
      t.integer :game_id
      t.integer :player_id
    end
  end
end
