#Fix the following code so it works properly:

class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
    @mileage = total
  end

  def print_mileage
    puts @mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage  # should print 5678

# Use self.milege over @mileage because the filter of the setter doing something might be needed than direct access to the instance variable
# ex.
# def mileage=(miles)
#@mileage = miles.to_i
#end
