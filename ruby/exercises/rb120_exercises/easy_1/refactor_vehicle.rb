# Consider the following classes:
class Vehicle
  attr_reader :make, :model
  def initialize(make, model)
    @make = make
    @model = model
  end
  
  def to_s
    "#{make} #{model}"
  end

class Car < Vehicle
  # attr_reader :make, :model

  # def initialize(make, model)
  #   super(make, model)
  # end

  def wheels
    4
  end

  # def to_s
  #   "#{make} #{model}"
  # end
end

class Motorcycle
  attr_reader :make, :model

  # def initialize(make, model)
  #   super(make, model)
  # end

  def wheels
    2
  end

  # def to_s
  #   "#{make} #{model}"
  # end
end

class Truck
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end

  # def to_s
  #   "#{make} #{model}"
  # end
end

# Refactor these classes so they all use a common superclass, and inherit behavior as needed.