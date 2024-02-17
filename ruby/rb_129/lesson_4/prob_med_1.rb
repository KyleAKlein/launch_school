# Question 1:
class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

# Ben is right because the balance in the positive_balance? method will use the attr_reader to get the data for the @balance instance variable. 

# Question 2:

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

#Alyssa looked at the code and spotted a mistake. "This will fail when update_quantity is called", she says.

#Can you spot the mistake and how to address it?

# Since @quantity is going to be reassigned in the update_quantity it will fail since there is only an attr_reader and not an attr_writer.

# Question 3:
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end

# Yes. self.quantity is a class method and will not be correct.

# Question 4:

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet('Hello')
  end
end

class Goodbye < Greeting
  def goodbye
    greet('Goodbye')
  end
end

#Question 5:
class KrispyKreme
  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end

  def to_s
    if filling_type.nil?
      "Plain with #{glazing}"
    elsif glazing.nil?
      "#{filling_type}"
    elsif filling_type.nil? && glazing_type.nil?
      "Plain"
    else
      "#{filling_type} with #{glazing}"
    end
  end
end

donut1 = KrispyKreme.new(nil, nil)
donut2 = KrispyKreme.new("Vanilla", nil)
donut3 = KrispyKreme.new(nil, "sugar")
donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
donut5 = KrispyKreme.new("Custard", "icing")

puts donut1
  => "Plain"

puts donut2
  => "Vanilla"

puts donut3
  => "Plain with sugar"

puts donut4
  => "Plain with chocolate sprinkles"

puts donut5
  => "Custard with icing"

# Question 6:

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    self.template
  end
end

#no diffference

#Question 7:

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def status
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end