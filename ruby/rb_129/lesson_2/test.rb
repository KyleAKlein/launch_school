# class House
#   attr_reader :price
  
#   def initialize(price)
#     @price = price
#   end 

#   def <(other)
#     self.price < other.price
#   end

#   def >(other)
#     self.price > other.price
#   end

# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)

# puts "Home 1 is cheaper" if home1 < home2 # => Home 1 is cheaper
# puts "Home 2 is more expensive" if home2 > home1 # => Home 2 is more expensive

# # What module/method could we add to the above code snippet to output the desired output on the last 2 lines, and why?

# =begin
#   def <(other)
#     self.price < other.price
#   end

#   def >(other)
#     self.price > other.price
#   end

#   The reason we need to overide the `>` and `<` methods (fake operators) is that they need to be called on an integer object. Currently, on line 21 and 22, they are being called on instances of `House` class. By making custom methods we can have them access the `price` instance variable directly, thus the integer needed for the greater than(`>`), less than(`<`), methods. 

# =end

# # What is the relationship between classes and objects in Ruby?

# # Classes are the "molds" for object. Objects are created from classes. A class defines the attributes and instance methods (states and behaviors) for the objects.

# #example:
# class House
#   attr_accessor :sq_ft, :rooms

#   def initialize(sq_ft, rooms)
#     @sq_ft = sq_ft
#     @rooms = rooms
#   end

#   def open_door
#     "open front door"
#   end
# end

# klein_home = Home.new(1300, 2)
# uncle_home = Home.new(1800, 3)

# # The `House` class can make many instances (objects) by using the `new` method call. Each instance has its own instance variables that are unique to each object but the instance method `open_door` is available to all instances of the class.

#Problem 2:

# module Drivable
#   def self.drive
#   end
# end

# class Car
#   include Drivable
# end

# bobs_car = Car.new
# bobs_car.drive

# # What is output and why? What does this demonstrate about how methods need to be defined in modules, and why?
# # Undefine Method Error. This is because the `self` for the "module" method inside the `Drivable` module refers to the Drivable module itself and can not be called from a different class or object. Which is why on line 11, the `drive` method being called on the `bobs_car` object is Undefined since that instance method doesn't exist.

# # What are the use cases for `self` in Ruby, and how does `self` change based on the scope it is used in? Provide examples.

# # The two main use cases for `self` are when it refers to the called object or when it refers to the class itself.

# class Bridge
#   attr_accessor :color
#   @@built = 0

#   def initialize(color)
#     @color = color
#     @@built += 1
#   end

#   def self.built
#     @@built
#   end

#   def info
#     "I am a #{self} bridge!"
#   end

#   def to_s
#     self.color
#   end

# end

# In this example, `self` is used 3 times. In the class method `self.built`, anytime this is called directly on the `Bridge` class, it will return the value for the class variable `@@built`. For the `self` inside the string interpolation in the `info` method, this refers to the calling object. Since there is also a `to_s` override method, it will return the `color` getter method called on the calling object. The calling object is an instance of the class and has its own encoding as well as custom attributes.

#problem 3:

# class Cat
#   attr_accessor :type, :age
  
#   def initialize(type) 
#     @type = type
#     @age = 0
#   end

#   def make_one_year_older
#     self.age += 1
#   end 
# end

# In the `make_one_year_older` method we have used `self`. What is another way we could write this method so we don't have to use the `self` prefix? Which use case would be preferred according to best practices in Ruby, and why?

# Instead of `self` you can call the instance variable directly via the `@` symbol. `@age += 1` will do the same effect. For best practices it is better to use `self`. You generally don't want to change the instance variable directly with `@age`. One reason is there might be additional filters or code inside the getter or setter methods that you would bypass by going to the instance variable directly. 

# How does encapsulation relate to the public interface of a class?

# The public interface of a class are the methods available to the instances of a class. By default all methods are public. By using method access control, such as protected or private, you can encapsulate given code, which is to say that it is hidden from the rest of the code base. 

# class Lady
#   attr_writer :age

#   def initialize(height)
#     @height = height
#   end

#   def height
#     @height
#   end

#   protected

#   def older?(other)
#     self.age > other.age
#   end
  
#   private
#   attr_reader :age
# end

# young = Lady.new(5_5)
# older = Lady.new(5_6)
# young.age=25
# older.age=38
# young.older?(older) #=false
# young.age

#In this example, we can set the age (via the public attr_writter) but not retrieve the age. Under the `protected` access control method, we can compare the two ages between the two object. And lastly we cannot access the `age` since it is private and will get an error.


# class Character
#   attr_accessor :name
#   def initialize(name)
#     @name = name
#   end
  
#   def speak
#     "#{@name} is speaking."
#   end 
# end

# class Knight < Character
#   def name
#     "Sir " + super
#   end
# end

# sir_gallant = Knight.new("Gallant")
# p sir_gallant.name #Sir Gallant
# p sir_gallant.speak #Gallant is speaking.

# What is output and returned, and why? What would we need to change so that the last line outputs `”Sir Gallant is speaking.”`?

# The output from line 19 is "Sir Gallant" and the output from line 20 is "Gallant is speaking." This is because inside the instance method `speak`, the instance variable `@name` is called directly, which has a value of only `Gallant`. To change it so that it says `Sir Gallant` you would need use `self`. 


# Describe the distinction between modules and classes.

# Classes are molds that create objects. Classes contain methods that are usable by instances of the classes (objects). 
# Modules, also contain methods and can be mixed into classes so that the custom objects of the class can have access to these method. Modules can contain classes, through namespacing, but cannot create objects themselves. 
# Also, classes can have class methods, and so can modules, through module methods. 

# module Clappable
#   def clap
#     "I can clap"
#   end

#   def self.clap
#     "Clap!"
#   end
# end

# class Animal
#   include Clappable
#   attr_accessor :type

#   def initialize(type)
#     @type = type
#   end

#   def self.move
#     "I can move"
#   end
# end

# # monkey = Animal.new('primate')

# class Student
#   attr_accessor :grade
  
#   def initialize(name, grade=nil)
#     @name = name
#   end 
# end

# ade = Student.new('Adewale')
# p ade # => #<Student:0x00000002a88ef8 @grade=nil, @name="Adewale">

# Running the following code will not produce the output shown on the last line. Why not? What would we need to change, and what does this demonstrate about instance variables?

# The instance variable `@grade` was never initialized so it will not be reflected as a state of the custom object.
# To change this you would need to add `@grade = grade` to the `initialize` method. Since it has a default value of `nil` it will be accepted. 
# This demonstrates that even though instance variables have a default value of nil they will not be shown as a state of an object unless they have been initialized.

#  What is the difference between instance methods and class methods? Provide examples.

# The difference between instance methods and class methods is first, which kinds of objects can call them. For class methods, only the class itself is allowed to call these methods. For the instance methods, any instance of the class or subclass, can call these methods.

# class Desk
#   def clean
#     "I cleaned the desk"
#   end

#   def self.color
#     "Brown"
#   end
# end

# big_desk = Desk.new
# small_desk = Desk.new

# big_desk.clean
# small_desk.clean
# Desk.color

# Here the two different instances of the `Desk` class can call the `clean` instance method, but only the desk itself can call the class method `self.color`. Class methods are denoted by `self` prepended to the method name.

# class Student
#   attr_accessor :name, :grade
  
#   def initialize(name)
#     @name = name
#     @grade = nil
#   end
    
#   def change_grade(new_grade)
#     grade = new_grade
#   end 
# end

# priya = Student.new("Priya")
# priya.change_grade('A')
# priya.grade

# In the above code snippet, we want to return `”A”`. What is actually returned and why? How could we adjust the code to produce the desired result?

# `nil` will be returned. This is because when we run the `change_grade` method, it in fact does not change the grade. The reason for this is because inside the `change_grade` method, they use `grade` to reassign the `@grade` value. This does not ultilize the setter method, it instead create a new local variable called `grade`. To fix this, you would need to use `self.grade` to call the setter method available through the `attr_accessor`.

# When should we use class inheritance vs. interface inheritance? Provide examples

# Class inheritance is used when a subclass has similar behavior to the super class and you want to subclass to inheritant it. You would use interface inheritance when you want a class to recieve specific behaviors from a module.

# class Cat
#   def initialize(name, coloring)
#     @name = name
#     @coloring = coloring
#   end

#   def purr; end
#   def jump; end
#   def sleep; end
#   def eat; end
# end

# max = Cat.new("Max", "tabby")
# molly = Cat.new("Molly", "gray")

# Do `molly` and `max` have the same states and behaviors in the code above? Explain why or why not, and what this demonstrates about objects in Ruby.

# Since `max` and `molly` are instances of the same class they will have the same behaviors (instance methods). They will not have have the same states, as states will be unique to each object and are scoped at the object level. This demonstrates that Classes can create custom objects with unique attributes but all instances have access to the same behaviors. 

# How do class inheritance and mixing in modules affect instance variable scope? Give an example.

# The scope for instance variables in inheritable. This means that subclasses will have access to instance variables initialized in the super class. This also applies to instance variables initialized in modules.

# module Nameable
#   attr_accessor :name
# end

# class Pet
#   attr_accessor :color
# end

# class Fish < Pet
#   include Nameable
# end

# gold = Fish.new
# gold.name='Goldie'
# gold.color='Gold'
# In this example, even though the attribute accessors are not inside the Fish class directly, it still has access since it inherits from `Pet` class and the `Nameable` module is mixed in. 

# module Flight
#   def fly; end
# end

# module Aquatic
#   def swim; end
# end

# module Migratory
#   def migrate; end
# end

# class Animal
# end

# class Bird < Animal
# end

# class Penguin < Bird
#   include Aquatic
#   include Migratory
# end

# pingu = Penguin.new
# pingu.fly

#What is the method lookup path that Ruby will use as a result of the call to the `fly` method? Explain how we can verify this.

# The method lookup path is: [Penguin, Migratory, Aquatic, Bird, Animal, Object, Kernel, BasicObject]
# We can verify this by calling the `ancestors` method on the `Penguin` class directly.


# module Walkable
#   def walk
#     "#{name} #{gait} forward"
#   end 
# end

# class Person
#   include Walkable
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
  
#   private
#   def gait
#     "strolls"
#   end 
# end

# class Cat
#   include Walkable
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
  
#   private
#   def gait
#     "saunters"
#   end 
# end

# mike = Person.new("Mike")
# p mike.walk
# kitty = Cat.new("Kitty")
# p kitty.walk

# What is returned/output in the code? Why did it make more sense to use a module as a mixin vs. defining a parent class and using class inheritance?

# `mike.walk` will output the string "Mike strolls forward"
# `kitty.walk` will output, "Kitty saunters forward"

# Mixing in the module 

# class GoodDog
#   DOG_YEARS = 7
#   attr_accessor :name, :age
  
#   def initialize(n, a)
#     self.name = n
#     self.age  = a * DOG_YEARS
#   end 
# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky

# What is output and why? How could we output a message of our choice instead? # How is the output above different than the output of the code below, and why?

# The output would be the class name with an encoding of the object's id. <#GoodDog:00000000909> This is because the `puts` method called on the `sparky` object uses the `to_s` method and this method as defined in the `Object` class will return the class name with the object's encoding. To output a message of our choice we would need to override the `to_s` inside of the `GoodDog` class.

# class GoodDog
#   DOG_YEARS = 7
#   attr_accessor :name, :age
#   def initialize(n, a)
#     @name = n
#     @age  = a * DOG_YEARS
#   end 
# end

# sparky = GoodDog.new("Sparky", 4)
# p sparky

# The output of this example would output, <#GoodDog:00000000909 @name="Sparky", @age=4>. This is because the `p` method uses the `inspect` method, which, as defined by the `Object` class will return the object's class along with the encoding of the object's id as well as all the attributes of the custom object.

# class Person
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "My name is #{name.upcase!}."
#   end 
# end

# bob = Person.new('Bob')
# puts bob.name
# puts bob
# puts bob.name

# What is output on `lines 14, 15, and 16` and why?

# `line 14` will output, "Bob"
# `line 15` will output "My name is BOB."
# `line 16` will output "BOB"

# Depending on which object `puts` is called on determines how it will print out. For example, on `line 14` `puts` is called on the return value of `bob.name` which is a string. Therefore the string "Bob" will be printed to the console.
# On line 15, `puts` is called on the `bob` object. Since `bob` is an instance of the `Person` class and this class has an overriding `to_s` method, the return of this method is what will be output. In this case, it is, "My name is BOB."
# On line 16, the `puts` is again called on a string object but since the value of this object was previously mutated it has a new value of `BOB`.

# class Person
#   attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end
# end

# al = Person.new('Alexander')
# alex = Person.new('Alexander')
# p al == alex # => true

# In the code above, we want to compare whether the two objects have the same name. `Line 11` currently returns `false`. How could we return `true` on `line 11`?

# To return `true` on line 11, you would need to override the `==` method, inside the `Person` class. An example would be:
# def ==(other) 
#  name == other.name
# end


# Further, since `al.name == alex.name` returns `true`, does this mean the `String` objects referenced by `al` and `alex`'s `@name` instance variables are the same object? How could we prove our case?

# No it does not mean they are the same object. Only that they are the same value. If you wanted to see if there were the same object and value you would have to use the `object?` method.

# class Animal
#   def initialize(name)
#     @name = name
#   end
# end

# class Dog < Animal
#   def initialize(name); end
#   def dog_name
#     "bark! bark! #{@name} bark! bark!"
#   end 
# end

# teddy = Dog.new("Teddy")
# puts teddy.dog_name

# What is output and why?

# The output would be: "bark! bark!  bark! bark!"
# The reason is that the instance variable `@name` was never initialized and therefore has a value of nil.

# class Person
#   attr_accessor :name, :pets
#   def initialize(name)
#     @name = name
#     @pets = []
#   end 
# end

# class Pet
#   def jump
#     puts "I'm jumping!"
#   end
# end

# class Cat < Pet; end

# class Bulldog < Pet; end

# bob = Person.new("Robert")
# kitty = Cat.new
# bud = Bulldog.new
# bob.pets << kitty
# bob.pets << bud
# bob.pets.jump

# We raise an error in the code above. Why? What do `kitty` and `bud` represent in relation to our `Person` object?

# The reason an exception is raised is because we are calling an instance method on an array of objects. `kitty` and `bud` represent collaborative objects to the  `Person` object.
# .
# class Animal
#   def eat
#     puts "I eat."
#   end
# end

# class Fish < Animal
#   def eat
#     puts "I eat plankton."
#   end
# end

# class Dog < Animal
#   def eat
#      puts "I eat kibble."
#   end
# end

# def feed_animal(animal)
#   animal.eat
# end

# array_of_animals = [Animal.new, Fish.new, Dog.new]
# array_of_animalseach do |animal|
#   feed_animal(animal)
# end

# What is output and why? How does this code demonstrate polymorphism?

# The output would be:
# "I eat."
# "I eat plakton."
# "I eat kibble."

# The reason the output changes has to do with which class the object comes from. Even though it is the same method call, `eat`, depending on the class, this method is overridden and the output is different. This demonstrates polymorphism because it shows how different objects are responding to a common interface (the `eat` method). 

# module Walkable
#   def walk
#     "I'm walking."
#   end 
# end

# module Swimmable
#   def swim
#     "I'm swimming."
#   end 
# end

# module Climbable
#   def climb
#     "I'm climbing."
#   end 
# end

# module Danceable
#   def dance
#     "I'm dancing."
#   end 
# end

# class Animal
#   include Walkable
#   def speak
#     "I'm an animal, and I speak!"
#   end 
# end

# module GoodAnimals
#   include Climbable
  
#   class GoodDog < Animal
#     include Swimmable
#     include Danceable
#   end

#   class GoodCat < Animal; end

# end

# good_dog = GoodAnimals::GoodDog.new
# p good_dog.walk

# What is the method lookup path used when invoking `#walk` on `good_dog`?

# The method lookup path is: [ GoodDog, Danceable, Swimmable, Animal, Walkable ]
# Once it looks into the `Walkable` module, and finds the `walk` instance method, it will execute the method and stop looking for it.

# class Animal
#   def initialize
#   end
# end

# class Bear < Animal
#   def initialize(color)
#   super
#     @color = color
#   end 
# end

# bear = Bear.new("black")
# What is output and why? What does this demonstrate about `super`?

# This will raise an exception, specifically a Wrong Number of Arguments Error. The reason being is that the when `super` is used without any parentheses it will pass in all given arguments of the method it was called in. Therefore, when the `color` argument is passed into the `initialize` method of the superclass `Animal` it will throw the error since that method takes no argument.

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
# What is output and why? What does this demonstrate about `super`?

# #<GoodDog:000000003212 @color= 'brown', @name= 'brown'> Since `p` is being called on the object and `p` uses `inspect` it will print out the class name along with an encoding of the object's id as well as all of its states and values (instance variables). This demonstrates that `super` (without any parentheses) will pass in the same arguments that were given. It passes it to the method of the same name, following the method lookup path.

# class Vehicle
# @@wheels = 4
  
# def self.wheels
#   @@wheels
# end

# end
# p Vehicle.wheels 

# class Motorcycle < Vehicle
# @@wheels = 2

# end
# p Motorcycle.wheels
# p Vehicle.wheels

# class Car < Vehicle; end

# p Vehicle.wheels
# p Motorcycle.wheels
# p Car.wheels
# What does the code above output, and why? What does this demonstrate about class variables, and why we should avoid using class variables when working with inheritance?

# class Person
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#   end

#   def change_name
#     name = name.upcase
#   end 
# end

# bob = Person.new('Bob')
# p bob.name
# bob.change_name
# p bob.name
# In the code above, we hope to output `'BOB'` on `line 16`. Instead, we raise an error. Why? How could we adjust this code to output `'BOB'`?
# The reason we get an error is because inside the `change_name` instance method, `name` is a new local variable assigned to the return of `name.upcase`, but since `name` hasn't been assigned yet, `upcase` is being called on a local variable that doesn't yet exist, so it will thrown and unknown variable error.
# We can adjust this by adding `self` to the `name = name.upcase`. (`self.name = name.upcase`)

# class GoodDog
#   attr_accessor :name, :height, :weight
#   def initialize(n, h, w)
#     @name = n
#     @height = h
#     @weight = w
#   end

#   def change_info(n, h, w)
#     name = n
#     height = h
#     weight = w
#   end
  
#   def info
#     "#{name} weighs #{weight} and is #{height} tall."
#   end
# end

# sparky = GoodDog.new('Spartacus', '12 inches', '10 lbs')
# sparky.change_info('Spartacus', '24 inches', '45 lbs')
# puts sparky.info
# => Spartacus weighs 10 lbs and is 12 inches tall.
# We expect the code above to output `”Spartacus weighs 45 lbs and is 24 inches tall.”` Why does our `change_info` method not work as expected?

# The reason the `change_info` method doesn't work as expected is because Ruby will treat `name`, `height` and `weight` as new local variables. If we wanted it to work as intended we would need to prepend `self` to all of them.

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
#     #@animals=[#<Animal:000000000434 @name='Human'> #<Animal:0000000006734 @name='Dog'>, #<Animal:000002434 @name='Cat'>]
#     # +
#     # @animals=[#<Animal:000000032345 @name= 'Eagle'>, #<Animal:0000000376745 @name= 'Blue Jay'>, #<Animal:00000003232777 @name= 'Penguin'>]
#     #   #@animals=[#<Animal:000000000434 @name='Human'> #<Animal:0000000006734 @name='Dog'>, #<Animal:000002434 @name='Cat'>, #<Animal:000000032345 @name= 'Eagle'>, #<Animal:0000000376745 @name= 'Blue Jay'>, #<Animal:00000003232777 @name= 'Penguin'>]
#   end 

#   def to_s
#     name
#   end
# end

# class Animal
#   attr_reader :name
  
#   def initialize(name)
#     @name = name
#   end 
# end

# mammals = AnimalClass.new('Mammals') #<AnimalClass:000000000987 @name='Mammals', @animals=[]>
# mammals << Animal.new('Human')
# #<AnimalClass:000000000987 @name='Mammals', @animals=[#<Animal:000000000434 @name='Human'>]>
# mammals << Animal.new('Dog')
# #<AnimalClass:000000000987 @name='Mammals', @animals=[#<Animal:000000000434 @name='Human'> #<Animal:000000000434 @name='Dog'>]
# mammals << Animal.new('Cat')
# #<AnimalClass:000000000987 @name='Mammals', @animals=[#<Animal:000000000434 @name='Human'> #<Animal:0000000006734 @name='Dog'>, #<Animal:000002434 @name='Cat'>]
# birds = AnimalClass.new('Birds')
# #<AnimalClass:000000000567 @name='Birds', @animals=[]>
# birds << Animal.new('Eagle')
# #<AnimalClass:000000000567 @name='Birds', @animals=[#<Animal:000000032345 @name= 'Eagle'>]
# birds << Animal.new('Blue Jay')
# #<AnimalClass:000000000567 @name='Birds', @animals=[#<Animal:000000032345 @name= 'Eagle'>, #<Animal:0000000376745 @name= 'Blue Jay']>
# birds << Animal.new('Penguin')
# #<AnimalClass:000000000567 @name='Birds', @animals=[[#<Animal:000000032345 @name= 'Eagle'>, #<Animal:0000000376745 @name= 'Blue Jay'>, #<Animal:00000003232777 @name= 'Penguin'>]
# some_animal_classes = mammals + birds
# #@animals=[#<Animal:000000000434 @name='Human'> #<Animal:0000000006734 @name='Dog'>, #<Animal:000002434 @name='Cat'>, #<Animal:000000032345 @name= 'Eagle'>, #<Animal:0000000376745 @name= 'Blue Jay'>, #<Animal:00000003232777 @name= 'Penguin'>]
# p some_animal_classes
# [#<Animal:000000000434 @name='Human'> #<Animal:0000000006734 @name='Dog'>, #<Animal:000002434 @name='Cat'>, #<Animal:000000032345 @name= 'Eagle'>, #<Animal:0000000376745 @name= 'Blue Jay'>, #<Animal:00000003232777 @name= 'Penguin'>]



# What is output? Is this what we would expect when using `AnimalClass#+`? If not, how could we adjust the implementation of `AnimalClass#+` to be more in line with what we'd expect the method to return?

# The output is an array: [#<Animal:000000000434 @name='Human'> #<Animal:0000000006734 @name='Dog'>, #<Animal:000002434 @name='Cat'>, #<Animal:000000032345 @name= 'Eagle'>, #<Animal:0000000376745 @name= 'Blue Jay'>, #<Animal:00000003232777 @name= 'Penguin'>].

# If we were to assume that `some_animal_classes` should print out just the classes then it would be an array that says [`Animal`], but if we wanted an array of the names of the animals not just the class, then we would need to override the `to_s' method to not give the literal object but the `@name` instance variables for each object. This would return:  ['Human','Dog','Cat','Eagle','Blue Jay','Penguin'].


# module Describable
#   def describe_shape
#     "I am a #{self.class} and have #{SIDES} sides."
#   end
# end

# class Shape
#   include Describable
#   def self.sides
#     self::SIDES
#   end
  
#   def sides
#     self.class::SIDES
#   end 
# end

# class Quadrilateral < Shape
#   SIDES = 4
# end

# class Square < Quadrilateral; end

# p Square.sides
# p Square.new.sides
# p Square.new.describe_shape

# What is output and why? What does this demonstrate about constant scope? What does `self` refer to in each of the 3 methods above?

# 4 is output. 
# 4 is output.
# "I am a Square and have 4 sides."
# The reason this is output is because of the inheritance between the classes. This demonstrates that when you refer to a constant using the resolution `::` operator it will search in the container you first reference and then search through the Ruby lookup path for that constant. This is considered lexical scope.
# `self` inside the class method `self.sides` refers to the class itself, as well as the `self` inside the method, also refers to the class itself.
# Inside the `sides` instance method, `self` refers to the calling object, which in this case is an instance of the `Square` class.
# Inside the module `Describable`, we use `self` inside string interpolation (in the instance method). This will again refer to the calling object, which is an instance of `Square` class.

# module Swimmable
#   def enable_swimming
#     @can_swim = true
#   end  
# end 
#   class Dog
#   include Swimmable
#   def swim
#     "swimming!" if @can_swim
#   end 
# end

# teddy = Dog.new
# p teddy.swim
# What is output and why? What does this demonstrate about instance variables?

# The output will be `nil`. This is because when the `swim` method is run, the `if` statement will check the boolean value of `@can_swim` since it was never initialized previously in the code, it has a default value of `nil` and Ruby treats `nil` as `falsey`. This means that it will not return the string "swimming!". When `p` is used on a return value of `nil` it will output `nil`.
# This demonstrates that uninitialized instance variables have a default value of 'nil'.

# class Shape
#   @@sides = nil
#   def self.sides
#       @@sides
#   end
#   def sides
#     @@sides
#   end 
# end

# class Triangle < Shape
#   def initialize
#     @@sides = 3
#   end
# end

# class Quadrilateral < Shape
#   def initialize
#     @@sides = 4
#   end
# end

# p Triangle.sides
# p Triangle.new.sides

# If you were to execute `Triangle.sides` you would get a return of `nil`. If you were to run `Triangle.new.sides` you would get a return of `3`. This demonstrates that class variables can and will be overridden whenever you reassign the value anywhere in the hierarcy. In this example, when you run `new` on `Triangle` the `initialize` method is executed and the class variable `@@sides` is reassigned to a value of `3`.

# class Person
#   def initialize(n)
#     @name = n
#   end

#   def get_name
#     @name
#   end 
# end

# bob = Person.new('bob')
# joe = Person.new('joe')

# puts bob.inspect # => #<Person:0x000055e79be5dea8 @name="bob">
# puts joe.inspect # => #<Person:0x000055e79be5de58 @name="joe">
# p bob.get_name # => "bob"

# What does the above code demonstrate about how instance variables are scoped?

# Instance variables are scoped at the object level. This means that instance variables are unique to each object. We can see this by looking at the value for the `@name` instance variable for each object. They are different. Also, when we call the `get_name` instance method on the `bob` object it will return the string `'bob'`. This shows that the scope of the instance variable is available outside the class and only to the object itself. This is what scoped at the object level means, it has direct access.   

# class Cat; end

# whiskers = Cat.new
# ginger = Cat.new
# paws = Cat.new

# If we use `==` to compare the individual `Cat` objects in the code above, will the return value be `true`? Why or why not? What does this demonstrate about classes and objects in Ruby, as well as the `==` method?

# No, it will return `false`. This is because the `==` operator is actually a fake operator and is a instance method of the BasicObject class. This method will compare the two objects and return true is both objects are the same object. In this case, all of these `Cat` instances are different custom objects and, when compared, will return false. This demonstrates that classes creates unique objects and that depending on what is calling the `==` method, depends on what is compared. 

# class Thing
# end

# class AnotherThing < Thing
# end

# class SomethingElse < AnotherThing
# end

# Describe the inheritance structure in the code above, and identify all the superclasses.

# Thing is a superclass which does not inherit from any custom classes but by default inherits from `Object`, `Kernel`, `BasicObject`. `AnotherThing` is a subclass that inherits from `Thing` (which makes it a superclass). `SomethingElse` inherits from `AnotherThing` which makes `Anotherthing` a superclass as well as a subclass and `SomethingElse` a subclass.

# The superclasses are as follows: `Thing` and `AnotherThing`. 

# class Animal
#   def initialize(name)
#     @name = name
#   end

#   def speak
#     puts sound
#   end
  
#   def sound
#     "#{@name} says "
#   end 
# end

# class Cow < Animal
#   def sound
#     super + "moooooooooooo!"
#   end
# end

# daisy = Cow.new("Daisy")
# daisy.speak

# What does this code output and why?

# This code snippet will output "Daisy says moooooooooooo!" This is because when the `speak` method is invoked inside the `Animal` class it will print to the screen the return of the `sound` instance method. Since the calling object is `daisy` and an instance of the `Cow` class, it will first look inside the `Cow` class for the instance method `sound`. It finds it and will execute `super`. `super` will look through the hierarcy for a method of the same name, in this case, `sound`. It will first search the `Animal` superclass. It finds it and will return the string "Daisy says ", where `"Daisy"` is actually the value of the instance variable `@name`. This return will be added to the string `'moooooooooooo!` as described by the `sound` method inside the `Cow` class. This final string "Daisy says moooooooooooo!" will be printed to the console will be printed to the console via the `speak` method.   


# class MeMyselfAndI
#   self
#   def self.me
#     self
#   end

#   def myself
#     self
#   end 
# end
# i = MeMyselfAndI.new
# What does each `self` refer to in the above code snippet?

# The first `self`, the one inside the class (not inside an instance method) refers to the class itself. Actually any `self` called outside of an instance method refers to the class itself. 
# When the class method is defined in `self.me`, the `self` refers to the class itself. The `self` inside the class method refers to the class, in this case is `MeMyselfAndI`.
# The `self` inside the instance method `myself` refers to the calling object directly, which is what `i` refers to. In this case would look like this, `#<MeMyselfAndI:000000000890>`

# class FarmAnimal
#   def speak
#     "#{self} says "
#   end
# end

# class Sheep < FarmAnimal
#   def speak
#     super + "baa!"
#   end
# end

# class Lamb < Sheep
#   def speak
#     super + "baaaaaaa!"
#   end
# end

# class Cow < FarmAnimal
#   def speak
#     super + "mooooooo!"
#   end
# end

# p Sheep.new.speak
# p Lamb.new.speak
# p Cow.new.speak
# What is output and why?

# `Sheep.new.speak` will output: "#<Sheep:0000000000434> says baa!" This is becuase when `super` is called inside the `Sheep` class, it will execute the `speak` method inside `FarmAnimal`. In this method the `self` inside the string interpolation will return the class name along with an encoding with the object's id, this will added to the string " says " and that will be concatenated to the string "baa!" The reason this will be printed to the console is the `p` method is invoked which will print it to the console.

# `Lamb.new.speak` will output:
# "#<Lamb:0000000000434> says baa!baaaaaaa!" Since `Lamb` inherits from `Sheep` and the `speak` method also uses `super` it will take the return of the `Sheep` `speak` method and add the string `"baaaaaaa!"` to it. The calling object is also different, which is why it `self` will return the `Lamb` object instead of the `Sheep` object.

# `Cow.new.speak` will output:
# `"<Cow:0000000000873> says mooooooo!`
# This example is similar to the `Sheep` example. They both inherit from `FarmAnimal` and both have `super` inside their respective `speak` methods. The only change is the object that `self` returns, which in this case will be a `Cow` object instead of a `Sheep`.

# class Person
#   def initialize(name)
#     @name = name
#   end 
# end

# class Cat
#   def initialize(name, owner)
#     @name = name
#     @owner = owner
#   end 
# end

# sara = Person.new("Sara")
# fluffy = Cat.new("Fluffy", sara)

# What are the collaborator objects in the above code snippet, and what makes them collaborator objects?

# The collaborator object in this code snippet is the object `sara`. The reason it is a collaborator is when the `fluffy` object is instantiated it passes in the `sara` object as an argument. Inside the `initialize` method (in the `Cat` class), the `@owner` instance variable is set to the second argument (`owner`). When an object is set to an instance variable's value, this makes it a collaborator object. 

# number = 42

# case number
#   when 1          then 'first'
#   when 10, 20, 30 then 'second'
#   when 40..49     then 'third'
# end
# What methods does this `case` statement use to determine which `when` clause is executed?

# The `case` statement will pass in the `number` local variable as an argument to each of the when statements, and return the value after `then`, if the return is `true`. 
# For the first statement, `1` it will use the `Integer#==` method to determine if the two values are numerically equal to each other.
# For the second statment, it will again use the `Integer#==` for each of the options given and return `second` if any of the options return a `truthy` value.
# For the last statement, it will use the `Range#include?` method. This will check if the argument passed in is between the two elements given, and return `true`, false otherwise.

class Person
  TITLES = ['Mr', 'Mrs', 'Ms', 'Dr']
  @@total_people = 0
  def initialize(name)
    @name = name
  end

  def age 
    @age
  end 
end
# What are the scopes of each of the different variables in the above code?

# The Constant `TITLES` has a lexical scope which means that whereever this constant is referred, it will first search the container it is referred in and then continue up the Ruby lookup path. The class variable `@@total_people` is scoped at the class level, which means all objects as well as the class and subclasses has access to it. The instance variables `@name` and `@age` are both scoped at the object level which means that they will have values that are unique to object that contains them and that they are only accessible to those objects (custom instances of the class). 