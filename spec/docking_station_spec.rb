require 'DockingStation'

describe 'DockingStation' do

  #it { is_expected.to respond_to(:release_bike) }
  it 'release bike' do
     expect(DockingStation.new).to respond_to(:release_bike)
  end

end
