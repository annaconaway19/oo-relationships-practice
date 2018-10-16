require 'pry'

class Driver
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
    Ride.all.select {|ride| ride.driver == self}
  end

  def passengers
    self.rides.collect {|ride| ride.passenger}
  end

  def self.mileage_cap(distance)
    long_rides = Ride.all.select do |ride|
      ride.distance > distance
    end
    long_rides.collect do |ride|
      ride.driver
      end
    end

  end
