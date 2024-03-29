#Question 1:
#All examples are objects

#Question 2:
#If we have a Car class and a Truck class and we want to be able to go_fast, how can we add the ability for them to go_fast using the module Speed? How can you check if your Car or Truck can now go fast?

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

# Question 3:
# In the last question we had a module called Speed which contained a go_fast method. We included this module in the Car class as shown below.

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

# When we called the go_fast method from an instance of the Car class (as shown below) you might have noticed that the string printed when we go fast includes the name of the type of vehicle we are using. How is this done?

small_car = Car.new
small_car.go_fast
#I am a Car and going super fast!

# Question 4:
# If we have a class AngryCat how do we create a new instance of this class?

# The AngryCat class might look something like this:

class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

tyrion = AngryCat.new

# Question 5

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

banana = Fruit.new('yellow')
pie = Pizza.new('Pag')
p banana.instance_variables
p pie.instance_variables