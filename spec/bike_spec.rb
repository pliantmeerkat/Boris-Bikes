require 'Bike'

describe 'Bike' do
  bike = Bike.new
  it 'working?' do
    expect(bike).to respond_to(:working?)
    expect(bike.working?).to eq(true)
  end

end
