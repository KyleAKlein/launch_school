# Design a Sports Team

# + Include 4 players (attacker, midfielder, defender, goalkeeper)

# + All the players' jersey is blue, 

# + except the goalkeeper, his jersey is white with blue stripes

# + All the players can run 
# + and shoot the ball.

# + Attacker should be able to lob the ball.

# + Midfielder should be able to pass the ball.

# + Defender should be able to block the ball.

# + The referee has a whistle. 
# + He wears black.
# + He is able to run 
# + He can whistle.

# module Runnable
#   def run
#     "runs!"
#   end
# end

# class Player
#   include Runnable
  
#   def initialize
#     @jersey_color = "blue" 
#   end

#   def shoot_the_ball
#     "shoots the ball!"
#   end
  
# end

# class Attacker < Player
#   def lob_the_ball
#     "lobs the ball!"
#   end
# end

# class Midfielder < Player
#   def pass_the_ball
#     "passes the ball!"
#   end
# end

# class Defender < Player
#   def block_the_ball
#     "blocks the ball!"
#   end
# end

# class Goalkeeper < Player
#   def initialize
#     @jersey_color = "white with blue stripes."
#   end
# end

# class Referee
#   include Runnable
  
#   def initialize
#     @whistle = true
#     @jersey_color = "black"
#   end

#   def whistle
#     "Whistle!"
#   end
# end


# def merge_alternately(word1, word2)
#   answer_string = []
#   longest_string_array = []
#   word1_array = word1.chars
#   word2_array = word2.chars

#   if word1.size > word2.size
#       longest_string_array = word1_array
#   elsif word2.size > word1.size
#       longest_string_array = word2_array
#   else
#       longest_string_array = word1_array
#   end

#   longest_string_array.each_with_index do |char, idx|
#       if word1.size && word2.size >= idx+1
#           answer_string << (word1_array[idx].nil? ? "" : word1_array[idx])
#           answer_string << (word2_array[idx].nil? ? "" : word2_array[idx])
#       elsif word1.size >= idx+1
#           answer_string << word1[idx]
#       elsif word2.size >= idx+1
#           answer_string << word2[idx]
#       end
#   end

#   answer_string.join
# end

# p merge_alternately('abc', 'defg')

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def make_caps
    @name.upcase
  end
end

kyle = Person.new("Kyle")
p kyle.make_caps