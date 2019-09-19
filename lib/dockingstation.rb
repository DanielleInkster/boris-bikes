require_relative 'bike'
class DockingStation
    attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
   raise 'Docking station full' if full?
   @bikes << bike
   @bikes 
  end

  private
  def full?
   @bikes.count >= 20
  end

  def empty?
   @bikes.count == 0
  end

end
