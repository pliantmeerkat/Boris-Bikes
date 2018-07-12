class DockingStation

  attr_reader :bike

  def release_bike
    return Bike.new
  end

  def dock_bike(bike)
    fail "No bikes availible" unless @bike 
  end
  
end
