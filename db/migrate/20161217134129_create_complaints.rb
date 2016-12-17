class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.integer :road_id, null: false
      t.string :corp_id
      t.timestamps
    end
    add_index :complaints, [:corp_id, :road_id], :unique => true
  end
end
