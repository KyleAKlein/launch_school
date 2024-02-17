# Question 1 :

# One problem is that we need to keep track of different breeds of dogs, since they have slightly different behaviors. For example, bulldogs can't swim, but all other dogs can.

# Create a sub-class from Dog called Bulldog overriding the swim method to return "can't swim!"

# class Dog
#   def speak
#     'bark!'
#   end

#   def swim
#     'swimming!'
#   end
# end

# class Bulldog < Dog
#   def swim
#     "can't swim"
#   end
# end

# teddy = Dog.new
# puts teddy.speak           # => "bark!"
# puts teddy.swim           # => "swimming!"
# betty = Bulldog.new
# puts betty.speak
# puts betty.swim

# Question 2:

# Create a new class called Cat, which can do everything a dog can, except swim or fetch. Assume the methods do the exact same thing. Hint: don't just copy and paste all methods in Dog into Cat; try to come up with some class hierarchy.

# My_Answer
# class Dog
#   def speak
#     'bark!'
#   end

#   def swim
#     'swimming!'
#   end

#   def run
#     'running!'
#   end

#   def jump
#     'jumping!'
#   end

#   def fetch
#     'fetching!'
#   end
# end

# class Cat < Dog
#   def swim
#     "I don't swim."
#   end

#   def fetch
#     "I don't fetch!"
#   end

# end

#LS_Answer

class Pet
  def run
    'run'
  end
  
  def jump
    'jumping!'
  end
end

class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming'
  end

  def fetch
    'fetcing'
  end
end

class Bulldog < Dog
  def swim
    "can't swim"
  end
end

class Cat < Pet
  def speak
    'Meow!'
  end
end

# tyrion = Cat.new
# puts tyrion.speak
# puts tyrion.run

# pete = Pet.new
# kitty = Cat.new
# dave = Dog.new
# bud = Bulldog.new

# pete.run                # => "running!"
# pete.speak              # => NoMethodError

# kitty.run               # => "running!"
# kitty.speak             # => "meow!"
# kitty.fetch             # => NoMethodError

# dave.speak              # => "bark!"

# bud.run                 # => "running!"
# bud.swim                # => "can't swim!"

# Draw a class hierarchy diagram of the classes from step #2