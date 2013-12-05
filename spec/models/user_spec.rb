require 'spec_helper'

describe User do

  before :each do 
    @user = FactoryGirl.build :user
  end

  describe "validations" do
    it "should fail if there is no email" do
      @user = FactoryGirl.build :user, email: nil
      expect(@user).to be_invalid
      expect(@user.errors[:email].first).to eq("can't be blank")
    end

    it "should fail when user is subscribed and name_on_card does not exist" do
      @user = FactoryGirl.build :user, name_on_card: nil, subscribed: true
      expect(@user).to be_invalid
      expect(@user.errors[:name_on_card].first). to eq("can't be blank")
    end

    it "should allow to create a user if he isn't subscribed and name_on_card does not exist" do
      @user = FactoryGirl.build :user, name_on_card: nil, subscribed: false
      expect(@user).to be_valid
    end

    it "should allow to create a user if he is subscribed and name_on_card exists" do
      @user = FactoryGirl.build :user, name_on_card: "hello my name is", subscribed: true 
      expect(@user).to be_valid
    end

    # name_on_card  subscribed? valid?
    # nil           true        false
    # nil           false       true
    # exist         true        true
  end  
end