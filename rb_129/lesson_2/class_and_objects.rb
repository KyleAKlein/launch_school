# Question 1 

# class Person
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

# end

# bob = Person.new('bob')
# bob.name                  # => 'bob'
# bob.name = 'Robert'
# bob.name                  # => 'Robert'

# Question 2

# My Answer
# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(first_name, last_name='')
#     @first_name = first_name
#     @last_name = last_name
#   end

#   def name
#     if @last_name == ''
#       @first_name
#     else
#       @first_name + ' ' + @last_name
#     end
#   end
# end

# LS Answer
# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parts = full_name.split
#     @first_name = parts.first
#     @last_name = parts.size > 1 ? parts.last : ''
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end
# end

# bob = Person.new('Robert')
# p bob.name # 'Robert'
# bob.first_name # 'Robert'
# p bob.last_name # ''
# bob.last_name = 'Smith'
# p bob.name # 'Robert Smith'

# Question 3

# My Answer
# class Person
#   attr_accessor :name, :first_name, :last_name

#   def initialize(full_name)
#     parts = full_name.split
#     @first_name = parts.first
#     @last_name = parts.size > 1 ? parts.last : ''
#   end

#   def name
#     if @last_name == ''
#       @first_name
#     else
#       @first_name + ' ' + @last_name
#     end
#   end

#   def name=(n)
#     parts = n.split
#     @first_name = parts.first
#     @last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# LS Answer

# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parts = full_name.split
#     @first_name = parts.first
#     @last_name = parts.size > 1 ? parts.last : ''
#   end

#   def name
#     "#{first_name} #{last_name}".strip
#   end

#   def name=(full_name)
#     parts = full_name.split
#     self.first_name = parts.first
#     self.last_name = parts.size > 1 ? parts.last : ''
#   end
# end

# DRY up the code:

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end

  def to_s
    name
  end
end




# bob = Person.new('Robert')
# p bob.name                  # => 'Robert'
# p bob.first_name            # => 'Robert'
# p bob.last_name             # => ''
# bob.last_name = 'Smith'
# p bob.name                  # => 'Robert Smith'

# bob.name = "John Adams"
# p bob.first_name            # => 'John'
# p bob.last_name             # => 'Adams'



# Question 4

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

# p bob.name == rob.name
# p rob

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"