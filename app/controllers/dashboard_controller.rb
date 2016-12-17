class DashboardController < ApplicationController
  def index
    render json: Road.all
  end
end