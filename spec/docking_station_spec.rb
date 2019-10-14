require "docking_station"
require "bike"

describe DockingStation do
  before :each do
    @docking_station = DockingStation.new
  end

  it "successfully instantiates the DockingStation class" do
    expect(@docking_station).to be_instance_of(DockingStation)
  end

  it "DockingStation responds to release_bike" do
    expect(@docking_station).to respond_to(:release_bike)
  end

  it "release_bike returns error if @bikes is empty" do
    expect { @docking_station.release_bike }.to raise_error("There are no docked bikes!")
  end

  it "DockingStation responds to dock_bike" do
    expect(@docking_station).to respond_to(:dock_bike)
  end

  it "DockingStation can dock a bike" do
    @docking_station.dock_bike(@bike)
    expect(@docking_station.bikes).to include(@bike)
  end
end
