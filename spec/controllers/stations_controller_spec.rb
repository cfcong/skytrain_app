require 'spec_helper'

describe StationsController do

  describe "GET #index" do
    pending it "list all stations" do 
      station = FactoryGirl.create :station
      get :index
      stations = assigns(:stations)
      expect(stations).to eq(station)
      expect(response). to render_template("index")
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

  end

end
