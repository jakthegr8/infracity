class CreateRoleTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :role_types do |t|
      t.string :name
      t.boolean :is_default
      t.references :users_roles_map, polymorphic: true

      t.timestamps
    end
    add_index :role_types, :name
  end
end
