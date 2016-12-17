class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.references :role_type, foreign_key: true

      t.timestamps
    end
    add_index :users, :email
  end
end
