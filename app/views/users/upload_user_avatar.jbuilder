json.(@update_user, :email, :role_type_id)
json.uuid @update_user.id
json.image_path @update_user.avatar.url(:thumbnail)
json.display_name @update_user.name