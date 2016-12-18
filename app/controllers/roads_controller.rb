class RoadsController < ApplicationController
  def info
    road = Road.includes(:ratings).find_by(id: params[:id])

    render json: {
      id: road.id, 
      councilor: {
        name: "Mala Baskar",
        contact: "9445467115",
        ward_member: "J.P. Chandrika"
      },
      ward: {
        number: 119,
        zone: 7,
        region: 41
      },
      photos: road.users_roads_photo_maps.map{|urpm| request.base_url+urpm.photo.url}.uniq,
      complaints: road.complaints.map(&:id),
      encroachment: average(road.ratings.collect(&:encroachment)),
      safety: average(road.ratings.collect(&:safety)),
      platform_usability: average(road.ratings.collect(&:platform_usability)),
      road_quality: average(road.ratings.collect(&:road_quality))
    }
  end

  private

  def average(list)
    return -1 if list.size == 0
    list.sum / list.size
  end
end