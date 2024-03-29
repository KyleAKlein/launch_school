# Consider the following code:

class Shelter
  @@num_of_pets = 0

  PETS_HSH = {} #'p hanson' => ['cat','butterscotch']

  def adopt(owner, pet)
    owner.add

    if PETS_HSH[owner.name].nil?
      PETS_HSH[owner.name] = [pet]
    else
      PETS_HSH[owner.name] << pet
    end
    # p PETS_HSH
  end

  def print_adoptions
    PETS_HSH.each do |k,v| 
      puts "#{k} has adopted the following pets:"
      v.each {|pet| puts "a #{pet.animal} named #{pet.pet_name}"}
    end
  end

  def number_of_pets
    @@num_of_pets
  end
end

class Pet < Shelter
  attr_accessor :animal, :pet_name

  def initialize(animal, pet_name)
    @animal = animal
    @pet_name = pet_name
  end
end

class Owner
  attr_reader :name, :num, :count

  def initialize(name, count=0)
    @name = name
    @count = count
  end

  def number_of_pets
    @count
  end

  def add
    @count += 1
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# Write the classes and methods that will be necessary to make this code run, and print the following output:

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.

# LS Answer:
# class Pet
#   attr_reader :animal, :name

#   def initialize(animal, name)
#     @animal = animal
#     @name = name
#   end

#   def to_s
#     "a #{animal} named #{name}"
#   end
# end

# class Owner
#   attr_reader :name, :pets

#   def initialize(name)
#     @name = name
#     @pets = []
#   end

#   def add_pet(pet)
#     @pets << pet
#   end

#   def number_of_pets
#     pets.size
#   end

#   def print_pets
#     puts pets
#   end
# end

# class Shelter
#   def initialize
#     @owners = {}
#   end

#   def adopt(owner, pet)
#     owner.add_pet(pet)
#     @owners[owner.name] ||= owner
#   end

#   def print_adoptions
#     @owners.each_pair do |name, owner|
#       puts "#{name} has adopted the following pets:"
#       owner.print_pets
#       puts
#     end
#   end
# end