# class Animal
#   def move
#   end
# end

# class Fish < Animal
#   def move
#     puts "swim"
#   end
# end

# class Cat < Animal
#   def move
#     puts "walk"
#   end
# end

# # Sponges and Corals don't have a separate move method - they don't move
# class Sponge < Animal; end
# class Coral < Animal; end

# animals = [Fish.new, Cat.new, Sponge.new, Coral.new]
# animals.each { |animal| animal.move }



  # Polymorphism refers to the ability of different object types to respond to the same method invocation, often, but not always, in different ways. In other words, data of different types can respond to a common interface

  #Duck typing occurs when objects of different unrelated types both respond to the same method name. With duck typing, we aren't concerned with the class or type of an object, but we do care whether an object has a particular behavior. If an object quacks like a duck, then we can treat it as a duck. Specifically, duck typing is a form of polymorphism. As long as the objects involved use the same method name and take the same number of arguments, we can treat the object as belonging to a specific category of objects.

  class Dog
    attr_reader :nickname
  
    def initialize(n)
      @nickname = n
    end
  
    def change_nickname(n)
      self.nickname = n
    end
  
    def greeting
      "#{nickname.capitalize} says Woof Woof!"
    end
  
    private
      attr_writer :nickname
  end
  
  dog = Dog.new("rex")
  dog.change_nickname("barny") # changed nickname to "barny"
  puts dog.greeting # Displays: Barny says Woof Woof!