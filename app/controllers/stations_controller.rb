class StationsController < ApplicationController

  def index
    @stations = Station.all
  end

  def show
    @station     = Station.find(params[:id])
    @attractions = Attraction.all
  end
  
end
