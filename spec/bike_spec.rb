require './lib/Bike'

describe Bike do

  it 'working?' do
    expect(subject).to respond_to(:working?)
    expect(subject.working?).to eq(true)
  end

  it 'dock' do
    expect(subject).to respond_to(:dock)
  end

end
