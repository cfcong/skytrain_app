require 'spec_helper'

describe StationsController do

  render_views

  describe "GET #index" do
    it "lists the stations" do 
      station = FactoryGirl.create(:station)
      get :index
      stations = assigns(:stations) # @stations
      expect(stations).to eq(stations)
      expect(response).to render_template("index")
      expect(response).to be_success # http 200
    end
  end
    
  describe "GET #show" do
    it "show station" do
      station = FactoryGirl.create :station
      get :show, id: station.id
      expect(response).to render_template("show")
    end
  end
end
