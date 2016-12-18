class CreateComplaints < ActiveRecord::Migration[5.0]
  def change
    create_table :complaints do |t|
      t.integer :road_id, null: false
      t.string :corp_id
      t.timestamps
    end
  end
end
