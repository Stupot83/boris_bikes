require "bike"

describe Bike do
  before :each do
    @bike = Bike.new
  end

  it "instantiates an instance of the Bike class" do
    expect(@bike).to be_instance_of(Bike)
  end

  it { is_expected.to respond_to(:working?) }

  it "bike is working" do
    expect(@bike.working?).to eq true
  end
end
