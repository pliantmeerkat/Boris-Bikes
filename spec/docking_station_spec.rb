require 'DockingStation'

describe 'DockingStation' do
  dock = DockingStation.new
  #it { is_expected.to respond_to(:release_bike) }
  it 'release bike' do
     expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'releases a bike' do
    expect(DockingStation.new.release_bike).to_not eq(nil)
  end
end
