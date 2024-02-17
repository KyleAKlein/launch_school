class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parts = full_name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ""
  end

  def name
    "#{first_name} #{last_name}".strip
  end
  
  def name=(n)
    parts = n.split
    @first_name = parts.first
    @last_name = parts.last
  end

  def ==(other)
    self.name == other.name
  end

  def to_s
    name
  end
end


bob = Person.new('Robert')
p bob.name                  # => 'Robert'
p bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
p bob.name                  # => 'Robert Smith'

bob.name = "John Adams"
p bob.first_name            # => 'John'
p bob.last_name             # => 'Adams'

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

p bob == rob

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}" #<Person:0x0000003542523>