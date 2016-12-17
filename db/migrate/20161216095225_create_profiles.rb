class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :email
      t.string :contact_number1
      t.string :contact_number2
      t.text :address1
      t.text :address2
      t.string :profile_image_path

      t.timestamps
    end
    add_index :profiles, :email, unique: true
  end
end
