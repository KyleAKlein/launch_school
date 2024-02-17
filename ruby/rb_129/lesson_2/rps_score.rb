class Move
  VALUES = ['rock', 'paper', 'scissors']

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (paper? && other_move.rock?) ||
      (scissors? && other_move.paper?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (paper? && other_move.scissors?) ||
      (scissors? && other_move.rock?)
  end

  def to_s
    @value
  end
end

class Score
  attr_accessor :score

  def initialize
    @score = { 'Human' => 0, 'Computer' => 0 }
  end

  def add_to_hsh(key, value)
    @score[key] += value
  end

  def human_score
    @score['Human']
  end

  def comp_score
    @score['Computer']
  end
end

class Player
  attr_accessor :move, :name

  def initialize
    set_name
  end
end

class Human < Player
  def set_name
    n = ""
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Sorry, must enter a value."
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Choose your weapon: rock, paper, scissors:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "sorry invalid choice."
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class RPSGame
  attr_accessor :human, :computer, :score

  def initialize
    @human = Human.new
    @computer = Computer.new
    @score = Score.new
  end

  def display_welcome_message
    puts "Welcome to Rock Paper Scissor."
  end

  def display_goodbye_message
    puts "Thanks for playing! Goodbye."
  end

  def display_moves
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."
  end

  def display_winner
    if human.move.>(computer.move)
      human_score_increase
      puts "#{human.name} won!"
    elsif human.move < computer.move
      comp_score_increase
      puts "#{computer.name} won!"
    else
      puts "It's a tie!"
    end
  end

  def human_score_increase
    score.add_to_hsh('Human', 1)
  end

  def comp_score_increase
    score.add_to_hsh('Computer', 1)
  end

  def play_again?
    ans = nil
    loop do
      puts "Play again?"
      ans = gets.chomp
      break if ['y', 'n'].include? ans.downcase
      puts "Sorry, must be y or n."
    end

    return true if ans == 'y'
  end

  def check_winner
    if score.human_score == 5
      puts "#{human.name} got 5 points!"
    elsif score.comp_score == 5
      puts "#{computer.name} got 5 points!"
    end
  end

  def choices
    human.choose
    computer.choose
  end

  def display_scores
    puts "#{human.name} has #{score.human_score} points!"
    puts "#{computer.name} has #{score.comp_score} points!"
  end

  def displays
    display_moves
    display_winner
    display_scores
  end

  def play
    display_welcome_message

    loop do
      choices
      displays
      check_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
