class CreateUsersRolesMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :users_roles_maps do |t|
      t.references :user, foreign_key: true
      t.references :role_type, foreign_key: true

      t.timestamps
    end
  end
end
