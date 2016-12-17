class UsersRoadsPhotoMapsController < ApplicationController
  def index
    @photo = UsersRoadsPhotoMap.new
  end

  def create
    @photo = UsersRoadsPhotoMap.create(photo_maps_params)
    if @photo.errors.empty?
      render json: { url: request.base_url + @photo.photo.url }, status: :created
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  private

  def photo_maps_params
    params.permit(:road_id, :user_id, :photo)
  end
end
