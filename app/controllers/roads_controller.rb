class RoadsController < ApplicationController
  def info
    road = Road.find(params[:id])

    render json: {
      id: road.id, 
      councilor: {
        name: "Mala Baskar",
        contact: "9445467115",
        ward_member: "J.P. Chandrika"
      },
      photos: road.users_roads_photo_maps.map{|urpm| request.base_url+urpm.photo.url}.uniq,
      complaints: ["669GBM"]
    }
  end
end