require "bike"

class DockingStation
  CAPACITY = 3

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "There are no docked bikes!" if @bikes.empty?
  end

  def dock_bike(bike)
    raise "The dock is full!" if @bikes.length == CAPACITY
    @bikes << bike
  end
end
