require 'Bike'

describe 'Bike' do

    it 'working?' do
      expect(Bike.new).to respond_to(:working?)
    end

end
