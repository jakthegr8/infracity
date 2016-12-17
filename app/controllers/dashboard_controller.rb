class DashboardController < ApplicationController
  def index
    render json: {roads: Road.all}
  end

  def home
    
  end
end