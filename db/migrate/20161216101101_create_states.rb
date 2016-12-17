class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.references :country, foreign_key: true

      t.timestamps
    end
    add_index :states, :name
  end
end
