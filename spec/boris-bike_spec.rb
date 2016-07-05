require 'boris-bike'

describe DockingStation do
  it 'is expected to respond to method "release_bike"' do
    docking_station = DockingStation.new
    expect(docking_station.respond_to?(:release_bike)).to eq true
  end

  it 'is expected to new instance of a Bike when the release_bike method is called' do
    docking_station = DockingStation.new
    expect(docking_station.release_bike).to be_a_kind_of(Bike)
  end

  #it { is_expected(DockingStation.respond_to?(:release_bike)).to eq true }

end
