require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


bakery1 = Bakery.new("Bake Shop")
bakery2 = Bakery.new("Sprinkles")
bakery3 = Bakery.new("Baked & Wired")

dessert1 = Desserts.new("cake", bakery1)
dessert2 = Desserts.new("pie", bakery2)
dessert3 = Desserts.new("cupcakes", bakery3)

ingredient1= Ingredients.new(100, "chocolate", dessert1)
ingredient2 = Ingredients.new(200, "butter", dessert2)
ingredient3 = Ingredients.new(50, "eggs", dessert3)


Pry.start
