require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "No bikes docked" if empty?
    fail "no working bikes at station" if working_bikes? == []
    select_bike
  end

  def dock(bike, bike_condition = true)
    fail "docking station full" if full?
    bike.working = bike_condition
    bikes << bike
  end

  def working_bikes?
    bikes.reject{|bike| bike.working == false }
  end

  def select_bike
    bikes.slice!(bikes.index{|bike| bike.working == true})
  end

  private

  def full?
    bikes.length >= @capacity
  end

  def empty?
    bikes.empty?
  end



end
