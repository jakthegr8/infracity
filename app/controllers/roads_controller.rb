class RoadsController < ApplicationController
  def info
    render json: Road.find_by(points: params[:id])
  end
end