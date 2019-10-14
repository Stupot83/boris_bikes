require "bike"

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "There are no docked bikes!" if empty?
  end

  def dock_bike(bike)
    raise "The dock is full!" if full?
    @bikes << bike
  end

private 

  def full?
    @bikes.length >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
