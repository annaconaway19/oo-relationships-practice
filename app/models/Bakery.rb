require 'pry'
class Bakery

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def ingredients
    #calls desserts method and collects ingredients within
    #this dessert instance
    self.desserts.collect do |dessert|
      dessert.ingredients #can't access ingredients until that
      #method is built in dessert
    end.flatten #combines the nested arrays
  end

  def desserts
    Desserts.all.select do |dessert|
      dessert.bakery == self
    end
  end

  def shopping_list
    Ingredients.all.collect do |ing|
      ing.name
    end
  end

  def average_calories
    calories = self.ingredients.collect {|ing|
      ing.calorie_count}
      #creates an array with ingredient instances calorie count
    calorie_total = calories.reduce(:+)
    #added all calories toge4ther
    calorie_total / calories.count
  end

end
