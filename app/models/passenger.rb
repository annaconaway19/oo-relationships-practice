require 'pry'

class Passenger
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def rides
    Ride.all.select {|ride| ride.passenger == self}
  end

  def drivers
    self.rides.collect {|ride| ride.driver}
  end

  def total_distance
    distances = self.rides.collect {|ride| ride.distance}
    distances.reduce(:+)
  end

  def self.premium_members
    self.all.select {|passenger| passenger.total_distance > 100}
  end

end
