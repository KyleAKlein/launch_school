#Question 1:
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

#case1:
hello = Hello.new
hello.hi

# #=> "Hello"

#case2:

hello = Hello.new
hello.bye

#Method Error

#case3:
hello = Hello.new
hello.greet
#Argument Error

#case4:
hello = Hello.new
hello.greet("Goodbye")

# Goodbye

#Case5:
Hello.hi

#NoMethod Error

#Question 2:
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def self.hi
    greet("Hello")
  end
  def greet(message)
    puts message
  end
end
# hi = Hello.new
Hello.hi

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# class Hello
# def self.hi
#   greeting = Greeting.new
#   greeting.greet("Hello")
# end
# end

#You cant just do self. you cant call greet

#Question 3:
#When objects are created they are a separate realization of a particular class.

#Given the class below, how do we create two different instances of this class with separate names and ages?

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

tyrion = AngryCat.new(10, 'Tyrion')
hodor = AngryCat.new(5, 'Hodor')

#Question 4:

class Cat
  attr_reader :type
  def initialize(type)
    @type = type
  end

  def to_s
    "I am a #{type} cat"
  end
end

#Question 5:

class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer #no method error
tv.model

Television.manufacturer
Television.model #no method

# question 6:

class Cat
  attr_accessor :type, :age

  @@age = 0

  def initialize(type)
    @type = type
    @age  = 0

    @@age += 1
  end

  def make_one_year_older
    self.age += 1
  end
end

# Class variable
# @@age 

#question 7:

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end

end
