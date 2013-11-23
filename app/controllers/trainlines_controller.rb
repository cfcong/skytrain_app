class TrainlinesController < ApplicationController
  
  def index
    @trainlines = Trainline.all
  end

  def show
    @trainline = Trainline.find(params[:id])
  end

end