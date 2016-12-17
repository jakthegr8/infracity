class CreateZones < ActiveRecord::Migration[5.0]
  def change
    create_table :zones do |t|
      t.string :name
      t.integer :zone_number
      t.string :latitude
      t.string :longitude
      t.references :taluk, foreign_key: true
      t.references :district, foreign_key: true

      t.timestamps
    end
    add_index :zones, :name
    add_index :zones, :zone_number
  end
end
