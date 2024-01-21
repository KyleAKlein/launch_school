# Write a description of the problem and extract major nouns and verbs.
# Tic Tac Toe is a two player game, one play is x, the other o. Each player chooses a square on a 3X3 grid. The player to get 3 'x' or 'o's in a row/diagnoally wins the game.


# Make an initial guess at organizing the verbs into nouns and do a spike to explore the problem with temporary code.
# Nouns: game, players, grid, symbol(x/o)
# Verbs: choices, 


# Organization:
# Game (TTT)
# Player
# Grid (Board)
  # dislpay grid with Symbol
# Move
  # choose Symbol and square

  ### SPIKE


  class Player
    NAME = ['R2D2', 'CLU', 'Hal', 'Chippy', 'ChatGPT']
    attr_accessor :name, :mark, :choice #choice = 1
    
    def comp_name
      NAME.sample
    end
  end
  
  class Board
    attr_accessor :s1, :s2, :s3, :s4, :s5, :s6, :s7, :s8, :s9, :arr, :square, :num_arr
    attr_reader :human, :comp
    def initialize(human, comp)
      @human = human
      @comp = comp
      @num_arr = ('1'..'9').to_a
      @arr = [@s1=" ", @s2=" ", @s3=" ", @s4=" ", @s5=" ", @s6=" ", @s7=" ", @s8=" ", @s9=" "]
      # set_arr
    end

    # def set_arr
    #  self.arr = arr.map {|x| x = "J"}
    # end
    
    def make_mark
      delete_mark
      human_mark
      comp_choice
    end

  def human_mark
    case human.choice
    when "1"
      self.s1 = human.mark
    when "2"
      self.s2 = human.mark
    when "3"
      self.s3 = human.mark
    when "4"
      self.s4 = human.mark
    when "5"
      self.s5 = human.mark
    when "6"
      self.s6 = human.mark
    when "7"
      self.s7 = human.mark
    when "8"
      self.s8 = human.mark
    when "9"
      self.s9 = human.mark

    end
  end

    def comp_choice
      delete_mark
      comp.choice = num_arr.sample # self.s2

      case comp.choice
      when "1"
        self.s1 = comp.mark
      when "2"
        self.s2 = comp.mark
      when "3"
        self.s3 = comp.mark
      when "4"
        self.s4 = comp.mark
      when "5"
        self.s5 = comp.mark
      when "6"
        self.s6 = comp.mark
      when "7"
        self.s7 = comp.mark
      when "8"
        self.s8 = comp.mark
      when "9"
        self.s9 = comp.mark
      end
      delete_mark
    end

    def delete_mark
      self.arr.delete(human.choice)
      self.arr.delete(comp.choice)
    end

    def display_board
      puts " #{s1} | #{s2} | #{s3} "
      puts "---+---+---"
      puts " #{s4} | #{s5} | #{s6} "
      puts "---+---+---"
      puts " #{s7} | #{s8} | #{s9} "
    end
  end
  
  # class Move #maybe
  #   attr_reader :human, 
  #   attr_accessor :computer
    
  #   def initialize
  #     @human = Player.new
  #     @computer = Computer.new
  #   end
  # end
  
  class TTT
    attr_reader :human, :computer, :board
  
    def initialize
      @human = Player.new 
      @computer = Player.new
      @board = Board.new(@human, @computer)
    end
  
    def prompt(message)
      puts "#{message}"
    end
  
    
    def welcome_message
      prompt("Welcome to Tic Tac Toe. Do you want to play?(y/n)")
      ans = gets.chomp
      loop do
        if ans == 'n'
          prompt("Goodbye")
          break
        elsif ans == 'y'
          prompt("Great!")
          break
        else
          prompt("Invalid input: try again. (y/n)")
          ans = gets.chomp
        end
      end
  
      ans == 'y'
    end
  
    def define_mark
      if human.mark == 'X'
        computer.mark = 'O'
      elsif human.mark == 'O'
        computer.mark = 'X'
      end
    end
  
    def ask_name_mark
      prompt("What is your name?")
      human.name = gets.chomp
      prompt("Thanks #{human.name}, please choose: `X` or `O`!")
      human.mark = gets.chomp.upcase
      define_mark
      prompt("You chose #{human.mark}. #{computer.comp_name} will be #{computer.mark}.")
    end
  
    def spot
     prompt("Choose: 1-9")
     human.choice = gets.chomp #1
     board.make_mark
    #  board.comp_choice
    end
    
    def play
      loop do
        break if welcome_message == false
        ask_name_mark
        board.display_board
        loop do 
          spot
          board.display_board
          board.delete_mark
        break if board.arr.size <= 1
        end
        # board.display_board
      # display_winner
      break
      end
    end
  end
  
  
  TTT.new.play





  # After human picks number
  # to delete the number from the array
  # have computer choose a number from the new array 
  # to delete number from the array

  
  # add the marks from human and computer to the board
  # display the board
  # ask human to pick number
  # check winner - figure out how to check if its 3 in a row, in all directions

  # how to add the marks to the board
  