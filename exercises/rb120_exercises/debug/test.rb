# # class Vehicle
# #   @@wheels = 4
# #   def self.wheels
# #     @@wheels
# #   end 
# # end

# # p Vehicle.wheels

# # class Motorcycle < Vehicle
# #   @@wheels = 2
# # end

# # p Motorcycle.wheels
# # p Vehicle.wheels

# # class Car < Vehicle; end

# # p Vehicle.wheels
# # p Motorcycle.wheels
# # p Car.wheels

#  # What does the code above output, and why? What does this demonstrate about class variables, and why we should avoid using class variables when working with inheritance?

# =begin
# It will print the following:

# 4
# 2
# 2
# 2
# 2
# 2

# The reason this happens is because, once `Motorcycle.wheels` is run, the Motorcycle class is executed and on line 11, the class variable `@@wheels` is reassigned to `2`. Since there can only be one value for a class variable, anytime any of the other methods call for the class variable `2` is returned.
# =end

# class Animal
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end 
# end

# class GoodDog < Animal
#   def initialize(color)
#     super
#     @color = color
#   end 
# end

# bruno = GoodDog.new("brown")
# p bruno

# # What is output and why? What does this demonstrate about `super`?

# =begin

# # The `bruno` object will be printed out along with all the attributes. This is because super is run and will pass in the argument and assign not only @color but also @name.

# =end

# class AnimalClass
#   attr_accessor :name, :animals

#   def initialize(name)
#     @name = name
#     @animals = []
#   end

#   def <<(animal)
#     animals << animal
#   end

#   def +(other_class)
#     animals + other_class.animals
#   end 
# end

# class Animal
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end 
# end

# mammals = AnimalClass.new('Mammals')
# mammals << Animal.new('Human') # @animals = [ Human object ]
# mammals << Animal.new('Dog') # @animals = [ Human object, Dog object ]
# mammals << Animal.new('Cat') # @animals = [Human object, Dog object, Cat object ]
# birds = AnimalClass.new('Birds')
# birds << Animal.new('Eagle')
# birds << Animal.new('Blue Jay')
# birds << Animal.new('Penguin')

# some_animal_classes = mammals + birds # [Human object, Dog object, Cat object ]
# p some_animal_classes

# # What is output? Is this what we would expect when using `AnimalClass#+`? If not, how could we adjust the implementation of `AnimalClass#+` to be more in line with what we'd expect the method to return?


# =begin
#   Kyle's Answer:
#   Line 36 will print to the screen the result of the `+` method being called on the `mammals` array with the `birds` array passed in as an argument. Inside the `+` method the `animals` array is called and added to the result of the @animals getter method being called on the passed in argument of `other+class`. The values of this would be an array `[Human object, Dog object, Cat object]` added to `[Eagle object, Blue Jay object, Penguin object`] for a final value of  `[Human object, Dog object, Cat object, Eagle object, Blue Jay object, Penguin object ]`

#  Yes this will work as expected.
# =end

