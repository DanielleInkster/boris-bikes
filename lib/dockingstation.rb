require_relative 'bike'
class DockingStation
    attr_reader :bike

    ::DEFAULT_CAPACITY = 20

  def initialize(capacity)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
   raise 'Docking station full' if full?
   @bikes << bike
  end

  private
  def full?
   @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
   @bikes.count == 0
  end

end
