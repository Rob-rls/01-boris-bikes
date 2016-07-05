require 'bike'

describe Bike do
  it 'is expected to respond to the method working?' do
    bike1 = Bike.new
    expect(bike1.respond_to?(:working?)).to eq true
  end

end
