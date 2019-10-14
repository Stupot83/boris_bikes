require "bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "There are no docked bikes!" if @bikes.empty?
  end

  def dock_bike(bike)
    @bikes << bike
  end
end
