=begin

We'll take an object-oriented approach to designing the solution, so we'll employ the steps we learned earlier:

Write a description of the problem and extract major nouns and verbs.
Make an initial guess at organizing the verbs into nouns and do a spike to explore the problem with temporary code.
Optional - when you have a better idea of the problem, model your thoughts into CRC cards.


Problem:
  Tic Tac Toe is a 2-player board game played on a 3x3 grid. Players take turns marking a square. The first player to mark 3 squaress in a row wins.

On the surface TTT is a simple game without too many nouns.

Nouns: board, player, square, grid
Verbs: play, mark

Organize a bit:
Board
Square
Player
- mark
- play

# The 'grid' was omitted because it's the same as a "board". There doesn't appear to be any verbs for "Board" or "Square", making the organization of verbs and nouns seem really awkward.

Remember this exercise only serves as a starting point for us to "spike" or explore.

Spike:

Write the classes. Create an initialize method for the classes. Start to think about possible "states" for the objects of the class.
  
=end

class Board
  def initialize
    #we need some way to model the 3x3 grid. Maybe "squares"?
    # what data structures should we use?
    # -array / hash of Square objects?
    # - array/hash of strings or integers
  end

end

class Square
  def initialize
    # maybe a "status" to keep track of this square's mark?
  end
end

class Player
  def initialize
    # maybe a "marker" to keep track of this player's symbol (ie, 'X' or 'O')
  end


  def mark
  end

  # def play
  # end
end

# Orchestration Engine:

class TTTGame
  def play
    display_welcome_message
    loop do
      display_board
      first_player_moves
      break if someone_won? || board_full?

      second_player_moves
      break if someone_won? || board_full?
    end
    display_result
    display_goodbye_message
  end
end

# we'll kick off the game like this
game = TTTGame.new
game.play


