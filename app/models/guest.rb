require 'pry'

class Guest
  attr_accessor :name, :listings

  @@all = []

  def initialize(name, listings)
    @name = name
    @listings = listings
    self.class.all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trips| trips.guest == self}
  end

  def trip_count
    self.trips.count
  end

  def self.pro_traveller
    self.all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    self.all.select {|guest| guest.name = self}
  end

end
