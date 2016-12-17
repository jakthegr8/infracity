class CreateRoads < ActiveRecord::Migration[5.0]
  def change
    create_table :roads do |t|
      t.string :points
      t.integer :rating
      t.text :summary

      t.timestamps
    end
  end
end
