# Take a look at the following code:

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    #@name.upcase!
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# What output does this code print? Fix this class so that there are no surprises waiting in store for the unsuspecting developer.
# Assumed Output: 
# "MY NAME IS FLUFFY."
# object_id
# "MY NAME IS FLUFFY."
# "MY NAME IS FLUFFY."

# Correct Output:
# 'Fluffy'
# "MY NAME IS FLUFFY."
# "FLUFFY"
# "FLUFFY"



class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s #Fluffy
  end

  def to_s
    @name.upcase! #FLUFFY
    "My name is #{@name}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name) #
puts fluffy.name
puts fluffy
puts fluffy.name
puts name
