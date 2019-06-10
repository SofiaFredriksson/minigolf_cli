class CreateGameHoles < ActiveRecord::Migration[5.0]
  def change
    create_table :game_holes do |t|
      t.integer :hole_id
      t.integer :game_id
    end
  end
end
