require "./lib/docking_station.rb"

station = DockingStation.new

bike = Bike.new

bike2 = Bike.new

station.dock(bike)

station.dock(bike2)
