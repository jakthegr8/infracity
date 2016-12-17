class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :road_quality
      t.integer :encroachment
      t.integer :platform_usability
      t.integer :safety
      t.text :comments
      t.integer :road_id

      t.timestamps
    end
  end
end
