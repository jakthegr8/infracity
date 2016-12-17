class CreateUsersRoadsPhotoMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :users_roads_photo_maps do |t|
      t.references :user, foreign_key: true
      t.references :road, foreign_key: true
      t.attachment :photo

      t.timestamps
    end
  end
end
