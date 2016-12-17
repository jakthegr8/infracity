class UsersRoadsPhotoMapsController < ApplicationController
  def index
    @photo = UsersRoadsPhotoMap.new
  end

  def create
    @photo = UsersRoadsPhotoMap.create(photo_maps_params)
    if @photo.errors.empty?
      render json: {}, status: :created
    else
      render json: @photo.errors, status: :unprocessable_entity 
    end
  end

  private

  def photo_maps_params
    params.require(:users_roads_photo_map).permit(:road_id, :user_id, :photo)
  end
end
