# Using the following code, add the appropriate accessor methods so that @name is returned with the added prefix 'Mr.'.

class Person
  attr_writer :name

  def name
    @name.prepend('Mr. ')
  end

end

person1 = Person.new
person1.name = 'James'
puts person1.name

# Mr. James