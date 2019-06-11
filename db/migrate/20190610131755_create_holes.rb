class CreateHoles < ActiveRecord::Migration[5.0]
  def change
    create_table :holes do |t| 
      t.integer :par 
      t.integer :stroke
      t.string :name 
    end
  end
end
