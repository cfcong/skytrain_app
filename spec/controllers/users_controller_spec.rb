require 'spec_helper'

describe UsersController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      expect(response).to be_success
    end
  end

  describe "GET 'create'" do
    it "returns user created" do
      user = FactoryGirl.create(:user)
      users = assigns(:users)
    end
  end

end
