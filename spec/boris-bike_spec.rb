require 'boris-bike'

describe DockingStation do
  it 'is expected to respond to method "release_bike"' do
    docking_station = DockingStation.new
    expect(docking_station.respond_to?(:release_bike)).to eq true
  end

  #it { is_expected(DockingStation.respond_to?(:release_bike)).to eq true }

end
