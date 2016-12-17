class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.references :users_roles_map, polymorphic: true

      t.timestamps
    end
    add_index :users, :email
  end
end
