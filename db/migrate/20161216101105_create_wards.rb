class CreateWards < ActiveRecord::Migration[5.0]
  def change
    create_table :wards do |t|
      t.string :name
      t.integer :ward_number
      t.string :latitude
      t.string :longitude
      t.references :zone, foreign_key: true

      t.timestamps
    end
    add_index :wards, :name
    add_index :wards, :ward_number
  end
end
