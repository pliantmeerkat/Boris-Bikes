require 'DockingStation'

describe 'DockingStation' do
  bike = Bike.new
  dock = DockingStation.new

  it 'release bike' do
     expect(dock).to respond_to(:release_bike)
     expect(dock.release_bike).to be_a(Bike)
  end

  it 'docks bike' do
    expect(dock).to respond_to(:dock_bike)
    expect(dock.dock_bike(bike)).to eq(bike)
  end

  it 'sees bike' do
    expect(dock).to respond_to(:bike)
    dock.dock_bike(bike)
    expect(dock.bike).to eq(bike)

  end

  describe '#release_bike' do
    it 'raises an error when there are now bikes' do
      expect(dock.release_bike).to raise_error 'No bikes availible'
    end
  end
end
