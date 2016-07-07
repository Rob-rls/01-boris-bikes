require 'docking_station'

describe DockingStation do

  context 'responds to' do

    it { is_expected.to respond_to :release_bike }

    it "should raise an error when there are no bikes" do
      expect { subject.release_bike }.to raise_error("No bikes docked")
    end

    it "should release a bike which has been docked before" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
      expect(bike).to be_working
    end
  end

  context "docking the bike" do

    it "should respond to 'dock'" do
      expect(subject).to respond_to(:dock).with(1).argument
      #bike = [Bike.new]
      #expect(subject.dock(bike)).to eq bike
    end

    it "should be able to see the bike" do
      bike = [Bike.new]
      subject.dock(bike[0])
      expect(subject.bikes).to eq bike
    end

    it "should raise an error when the docking station is full" do
      bike = Bike.new
      20.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error("docking station full")
    end

  end
end
