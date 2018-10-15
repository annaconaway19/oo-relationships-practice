require 'pry'

class Desserts
  attr_accessor :name, :bakery
  @@all = []

  def initialize(name, bakery)
    @name = name
    @bakery = bakery
    self.class.all << self
  end

  def self.all
    @@all
  end

  def ingredients
    #go through all ingredients, find my Ingredients
    Ingredients.all.select {|ing| ing.dessert == self}
  end

  def calories
    Ingredients.all.inject(0) {|sum, ing|
      sum + ing.calorie_count
    }
  end

end
