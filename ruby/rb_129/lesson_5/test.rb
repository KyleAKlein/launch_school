=begin
# OOP approach 

1. Write a description of the problem. Extact major nouns and verbs
2. Make an initial guess at organizing the verbs into nouns and do a spike to explore the porblem with temporary code.
3. Optional- when you have a better idea of the problem, model your thoughts into CRC cards.

Problem: Tic Tac Toe is a 2-player board game played on a 3x3 grid. Players take turns marking a square. First player to mark 3 squares in a row wins.

Nouns: board, player, square, grid
Verbs: play, mark

Orgnaize it a bit:

Board
Square
Player
  -mark 
  -play


Notes:
Don't hardcode marker values. (create Constants)

=end
require 'pry'
class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + #rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + #cols
                  [[1, 5, 9], [3, 5, 7]]              #diagonals
  
  attr_accessor :squares

  def initialize
    @squares = {}
    (1..9).each {|key| @squares[key] = Square.new}
    # we need some way to model the 3x3 grid. maybe "squares?"
    # what data structure shoudl we use?
    # array/hash of square objects?
    # array/hash of strings of integers?
  end

  def get_square_at(key)
    @squares[key]
  end

  def set_square_at(key, marker)
    @squares[key].marker = marker
  end

  def unmarked_keys
    @squares.keys.select {|key| @squares[key].unmarked?}
  end

  def full?
    unmarked_keys.empty?
  end

  def someone_won?
    !!detect_winner
  end

  #returns winning marker or nil
  def detect_winner
    WINNING_LINES.each do |line|
      if @square[line[0]].marker == TTTGame::HUMAN_MARKER && @square[line[0]].marker == TTTGame::HUMAN_MARKER && @square[line[0]].marker == TTTGame::HUMAN_MARKER
        return human.marker
      end
    end
  end

end

class Square
  INITIAL_MARKER = " "
  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
    #maybe a "status" to keep track of this square's mark?
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end
end

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
    # maybe a "marker" to keep track of this player's symbol (ie, 'X' or 'O')
  end

end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"
  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new("X")
    @computer = Player.new("O")
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goobye!"
  end

  def display_board
    system 'clear'
    puts "You're a #{human.marker}. Computer is a #{computer.marker}."
    puts ""
    puts "     |     |"
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}  |  #{board.get_square_at(3)}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}  |  #{board.get_square_at(6)}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}  |  #{board.get_square_at(9)}"
    puts "     |     |"
    puts ""
  end

  def human_moves
    puts "Choose a square (#{board.unmarked_keys.join(', ')}): "
    square = nil
    loop do 
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    # binding.pry
    board.set_square_at(square, human.marker)
  end

  def computer_moves
    board.set_square_at(board.unmarked_keys.sample, computer.marker)
  end

  def display_result
    display_board
    puts "The board is full"
  end

  def play
    display_welcome_message
    display_board

    loop do
      human_moves
      break if someone_won? || board.full?

      computer_moves
      break if someone_won? || board.full?
      display_board
    end
    display_result
    display_goodbye_message
  end
  
end

# wel'll kick off the game like this
game = TTTGame.new
game.play

