require "bike"

describe Bike do
  it "should respond to 'working?'" do
    expect(subject).to respond_to :working
  end

  it 'shoud be able to update the working status' do
    expect(subject.working = false).to eq false
  end

end
