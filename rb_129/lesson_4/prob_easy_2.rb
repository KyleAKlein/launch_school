# Question 1:
# 

class Oracle
def predict_the_future
  "You will " + choices.sample
end

def choices
  ["eat a nice lunch", "take a nap soon", "stay at work late"]
end
end

# What is the result of executing the following code:
oracle = Oracle.new
oracle.predict_the_future

# Question 2:

# We have an Oracle class and a RoadTrip class that inherits from the Oracle class.

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
trip.predict_the_future

#It will choose from the Roadtrip choices

# Question 3:
module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end
# 
# Question 4:
#What could you add to this class to simplify it and remove two methods from the class definition while still maintaining the same functionality?

class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

#attr_accessor :type