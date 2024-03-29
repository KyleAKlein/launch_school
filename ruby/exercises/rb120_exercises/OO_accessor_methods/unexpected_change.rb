# Modify the following code to accept a string containing a first and last name. The name should be split into two instance variables in the setter method, then joined in the getter method to form a full name.

class Person
  attr_accessor :name, :first_name, :last_name

  def name= (name)
    arr = name.split
    @first_name = arr[0]
    @last_name = arr[-1]
    @name = "#{@first_name} #{@last_name}"
  end


end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name

# John Doe