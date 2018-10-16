require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new("Ali")
passenger2 = Passenger.new("Scott")
passenger3 = Passenger.new("Jordan")
passenger4 = Passenger.new("Jake")

driver1 = Driver.new("Elton John")
driver2 = Driver.new("Madonna")
driver3 = Driver.new("Beyonce")

ride1 = Ride.new(driver1, passenger1, 105.5)
ride2 = Ride.new(driver2, passenger2, 120)
ride3 = Ride.new(driver3, passenger3, 12.75)
ride4 = Ride.new(driver3, passenger4, 5.5)

bakery1 = Bakery.new("Bake Shop")
bakery2 = Bakery.new("Sprinkles")
bakery3 = Bakery.new("Baked & Wired")

dessert1 = Desserts.new("cake", bakery1)
dessert2 = Desserts.new("pie", bakery2)
dessert3 = Desserts.new("cupcakes", bakery3)

ingredient1= Ingredients.new(100, "chocolate", dessert1)
ingredient2 = Ingredients.new(200, "butter", dessert2)
ingredient3 = Ingredients.new(50, "eggs", dessert3)

listing1 = Listing.new("NYC")
listing2 = Listing.new("Paris")
listing3 = Listing.new("Las Vegas")

guest1 = Guest.new("Anna", listing1)
guest2 = Guest.new("Justin", listing2)
guest3 = Guest.new("Becca", listing3)
guest4 = Guest.new("Patrick", listing3)

trip1 = Trip.new(guest1, listing2)
trip2 = Trip.new(guest3, listing3)
trip3 = Trip.new(guest1, listing1)
trip4 = Trip.new(guest4, listing3)
trip5 = Trip.new(guest2, listing2)

Pry.start
