# Create a module named Transportation that contains three classes: Vehicle, Truck, and Car. Truck and Car should both inherit from Vehicle.

module Transportation

class Vehicle
  attr_accessor :year

  def initialize(year)
    @year = year
  end

end

class Truck < Vehicle
end

class Car < Vehicle
end

end

Transportation::Truck.new(1999)