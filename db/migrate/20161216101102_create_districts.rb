class CreateDistricts < ActiveRecord::Migration[5.0]
  def change
    create_table :districts do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.references :state, foreign_key: true

      t.timestamps
    end
    add_index :districts, :name
  end
end
