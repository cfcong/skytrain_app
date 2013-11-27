require 'spec_helper'

describe Trainline do
  it "should return false without a name"
    trainline = Trainline.new()
    expect(trainline.name).to eq(false)
  end
  it "should return true with a name"
    trainline = Trainline.new(name: 'Jubilee')
    expect(trainline.name).to eq("Jubilee")
  end
end
