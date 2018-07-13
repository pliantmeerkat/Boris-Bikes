class DockingStation

  attr_reader :bikes
  attr_accessor :bike_count
  attr_accessor :capacity

  def initialize(capacity=20) # default capacity is 6
    @capacity = capacity
    @bikes = [Bike.new]
    @bike_count = @bikes.length
  end

  def release_bike
    @bike_count = @bikes.length
    return fail "No bikes availible" unless @bike_count > 0 
    @bike_count -= 1
    @bikes.pop
  end

  def dock_bike(bike)
    @bike_count = @bikes.length
    return fail "Capacity is full" unless @bike_count < capacity
    @bikes.push(bike)
    return @bikes[-1] 
  end
  
end
