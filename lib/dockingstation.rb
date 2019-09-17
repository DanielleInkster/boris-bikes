require './lib/bike.rb'
class DockingStation
    attr_reader :bike
def initialize
end


def release_bike
  puts 'release_bike'
  Bike.new
end

def dock(bike)
  puts "bike docked"
  @bike = bike
end
end
