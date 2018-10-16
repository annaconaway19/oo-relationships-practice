require 'pry'

class Listing
  attr_accessor :name
  @@all = []

  #city is a string here
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.listing == self}
  end

  def trip_count
    self.trips.count
  end

  def guests
    Guest.all.select {|guest| guest.listings == self}
  end

  def self.find_all_by_city(city)
    self.all.select {|city| city.name = self}
  end

  def self.most_popular
    self.all.max {|a, b| a.trip_count <=> b.trip_count}
  end


end
