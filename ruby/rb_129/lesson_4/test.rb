module Speedable
  attr_accessor :speed, :heading, :fuel_efficiency, :fuel_capacity

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
    include Speedable

  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
    @tires = tire_array
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end

end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end

class Catamaran
  attr_reader :propeller_count, :hull_count
  include Speedable

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
    @num_propellers = num_propellers
    @num_hulls = num_hulls
  end
end

class Motorboat<Catamaran
  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    @num_hulls = 1
  end

end

car = WheeledVehicle.new([30,30,32,32], 50, 25.0)
boat = Catamaran.new(4, 2, 100, 200)
p car.range
p boat.range
=begin
This new class does not fit well with the object hierarchy defined so far. Catamarans don't have tires. But we still want common code to track fuel efficiency and range. Modify the class definitions and move code into a Module, as necessary, to share code among the Catamaran and the wheeled vehicles.
=end