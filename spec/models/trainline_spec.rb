require 'spec_helper'

describe Trainline do

  before :each do 
    @trainline = FactoryGirl.build :trainline, name: nil
  end

  describe "validations" do 
    it "should fail when no name is provided" do
      expect(@trainline).to be_invalid
      expect(@trainline.errors[:name].first).to eq("can't be blank")
    end

    it "should allow creation when name is provided" do
      @trainline.name = "Port Moody"
      expect(@trainline).to be_valid
    end  
  end

  # describe  "superAwesomeHappyFunTimes" do 
  #   it "should return 'blah' when a == 2 " do
  #     @trainline.name = "Port Moody"
  #     response = @trainline.superAwesomeHappyFunTimes 3
  #     expect(response).to eq("wow that's another number")
  #   end
  # end

end
