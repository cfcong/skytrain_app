require 'spec_helper'

describe TrainlinesController do

  render_views

  describe "GET 'index'" do
    it "lists the trainlines" do
      trainline1, trainline2 = FactoryGirl.create(:trainline), FactoryGirl.create(:trainline)
      get :index
      trainlines = assigns(:trainlines) # @trainlines
      expect(trainlines).to eq([trainline1, trainline2])
      expect(response).to render_template("index")
      expect(response).to be_success # http 200
    end
  end

  describe "GET 'show'" do 
    it "renders the show template" do
      trainline = FactoryGirl.create(:trainline)
      get :show, id: trainline.id
      expect(response).to render_template("show")
    end
  end
end
