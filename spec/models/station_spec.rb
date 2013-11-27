require 'spec_helper'

describe Station do
  describe "get_the_next_station" do
    it "returns the next station" do
      #station = Station.find_by_sequence_num(name: 'Coquitlam Centre', sequence_num: '16' )
      #expect(station.get_the_next_station).to eq("station.name")
      @station = FactoryGirl.build :station
      @station.sequence_num = 4
      @station.save

      @station1 = FactoryGirl.build :station
      @station1.sequence_num = 5
      @station1.save

      expect(@station.get_the_next_station.id).to eq(station1.id)  
    end
  end
end   
