require 'pry'

class Trip
  attr_accessor :guest, :listing

  @@all = []

  def initialize(guest, listing)
    @guest, @listing = guest, listing
    self.class.all << self
  end

  def self.all
    @@all
  end

end
