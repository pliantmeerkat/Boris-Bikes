require './lib/DockingStation'

describe DockingStation do
  bike = Bike.new
  it 'release bike' do
     expect(subject).to respond_to(:release_bike)
     length = subject.bikes.length 
     expect(subject.release_bike).to be_a(Bike)
     expect(subject.bike_count).to eq(length -1) # bike was released above
  end

  it 'docks bike' do
    expect(subject).to respond_to(:dock_bike).with(1).arguments
    expect(subject.dock_bike(bike)).to eq(bike)
  end

  it 'sees bike' do
    expect(subject).to respond_to(:bikes)
    subject.dock_bike(bike)
    expect(subject.bikes[-1]).to eq(bike)

  end

  describe 'release_bike' do
    it 'raises an error when there are no bikes' do
      subject.bike_count = 0
      unless subject.bike_count > 0 
        expect{ subject.release_bike }.to raise_error("No bikes availible")
      end
    end
  end

  describe 'capacity' do
    subject { DockingStation.new.capacity }
    it { is_expected.to be_an(Integer) }
    it { is_expected.to be > 0 }
  end

  describe 'multiple tests' do 
    dock = DockingStation.new(20)
    dock.bike_count = 0
    it 'can add bikes to maximum capacity' do
      19.times { dock.bikes.push(Bike.new) }
      expect(dock.bikes.length).to eq(20)
      expect(dock.bikes[-1]).to be_a(Bike)
    end

    it 'cant add more bikes than maximum' do
      dock.bikes.clear
      22.times { dock.dock_bike(Bike.new) }
      expect(dock.bikes.length).to eq(20)
    
    end
  end
end
