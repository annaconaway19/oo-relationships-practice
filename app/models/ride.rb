require 'pry'

class Ride
  attr_accessor :driver, :passenger, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver, @passenger, @distance = driver, passenger, distance
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
     distances = self.all.collect {|ride| ride.distance}
     total_distance = distances.reduce(:+)
     total_distance/distances.count
   end
end
