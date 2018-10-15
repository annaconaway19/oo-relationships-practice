class Ingredients
  attr_accessor :calorie_count, :name, :dessert
  @@all = []

  def initialize(calorie_count, name, dessert)
    @name = name
    @calorie_count = calorie_count
    @dessert = dessert
    self.class.all << self
  end

  def self.all
    @@all
  end

  def bakery
    self.dessert.bakery
  end

  def self.find_all_by_name(ingredient)
    self.all.collect do |ing|
      ing.name == ingredient
    end
  end

end
