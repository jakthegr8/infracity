class DashboardController < ApplicationController
  def index
    render json: Road.all
  end

  def home
    
  end
end