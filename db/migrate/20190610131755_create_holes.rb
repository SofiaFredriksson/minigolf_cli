class CreateHoles < ActiveRecord::Migration[5.0]
  def change
    create_table :holes do |t| 
      t.integer :par 
      t.string :name 
    end
  end
end
