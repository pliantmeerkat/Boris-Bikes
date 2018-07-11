require 'DockingStation'


describe 'DockingStation' do
  dock = DockingStation.new
  it 'release bike' do
     expect(dock).to respond_to(:release_bike)
     expect(dock.release_bike).to be_a(Bike)
  end

end
