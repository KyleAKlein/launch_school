=begin
Twenty-One is a card game consisting of a dealer and a player, where the participants try to get as close to 21 as possible without going over.

Here is an overview of the game:
- Both participants are initially dealt 2 cards from a 52-card deck.
- The player takes the first turn, and can "hit" or "stay".
- If the player busts, he loses. If he stays, it's the dealer's turn.
- The dealer must hit until his cards add up to at least 17.
- If he busts, the player wins. If both player and dealer stays, then the highest total wins.
- If both totals are equal, then it's a tie, and nobody wins.

Nouns: card, player, dealer, participant, deck, game, total (#calculate total)
Verbs: deal, hit, stay, busts (not an action but a state. Is the player/dealer busted?)


Classes

Player:
- hit
- stay
- busted?
- total
Dealer:
- hit
- stay
- busted?
- total
- deal (should this be here, or in Deck?)
Participant:
Deck:
- deal (should this be here, or in Dealer?)
Card
Game
- start

=end

#Spike:

# class Player
#   def initialize
#     # what would the "data" or "states" of a Player object entail?
#     # maybe cards? a name?
#   end

#   def hit
#   end

#   def stay
#   end

#   def busted?
#   end

#   def total
#     # definitely looks like we need to know about "cards" to produce some total
#   end
# end

# class Dealer
#   def initialize 
#     # seems like very similar to Player... do we even need this?
#   end

#   def deal
#     # does the dealer or the deck deal?
#   end

#   def hit
#   end

#   def stay
#   end

#   def busted?
#   end

#   def total
#   end
# end

# class Participant
#   # what goes in here? all the redundant behaviors from Player and Dealer?
# end

# class Deck
#   def initialize
#     # obviously, we need some data structures to keep track of cards
#     # array, hash, something else?
#   end

#   def deal
#     # does the dealer or the deck deal?
#   end
# end

class Card
  SUITS = ['H', 'D', 'S', 'C']
  FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

  def initialize(suit, face)
    @suit = suit
    @face = face
  end

  def to_s
    "The #{face} of #{suit}"
  end

  def face
    case @face
    when 'J' then 'Jack'
    when 'Q' then 'Queen'
    when 'K' then 'King'
    when 'A' then 'Ace'
    else
      @face
    end
  end

  def suit
    case @suit
    when 'H' then 'Hearts'
    when 'D' then 'Diamonds'
    when 'S' then 'Spades'
    when 'C' then 'Clubs'
    end
  end

  def ace?
    face == 'Ace'
  end

  def king?
    face == 'King'
  end

  def queen?
    face == 'Queen'
  end

  def jack?
    face == 'Jack'
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      Card::FACES.each do |face|
        @cards << Card.new(suit, face)
      end
    end

    scramble!
  end

  def scramble!
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end
end

module Hand
  def show_hand
    puts "---- #{name}'s Hand ----"
    cards.each do |card|
      puts "=> #{card}"
    end
    puts "=> Total: #{total}"
    puts ""
  end

  def total 
    total = 0
    cards.each do |card|
      if card.ace?
        total += 11
      elsif card.jack? || card.queen? || card.king?
        total += 10
      else
        total += card.face.to_i
      end
    end

    #correct for aces
    cards.select(&:ace?).count.times do
      break if total <= 21
      total -= 10
    end

    total
  end

  def add_card(new_card)
    cards << new_card
  end

  def busted?
    total > 21
  end
end

class Participant
  include Hand 

  attr_accessor :name, :cards
  def initialize
    @cards = []
    set_name
  end
end

class Player < Participant
  def set_name
    name = ''
    loop do
      puts "What's your name?"
      name = gets.chomp
      break unless name.empty?
      puts "Sorry, must enter a value."
    end
    self.name = name
  end
end

class Game

  def initialize
    @cards = Cards.new
  end

  def start
    deal_cards
    show_initial_cards
    player_turn
    dealer_turn
    show_result
  end

  def deal_cards
    2.times do
      player.add_card(deck.deal_one)
      dealer.add_card(deck.deal_one)
    end
  end

  def show_flop
    player.show_flop
    dealer.show_flop
  end

  def player_turn
    puts "#{player.name}'s turn..."

    loop do 
      puts "Would you like to (h)it or (s)tay?"
      answer = nil
      loop do 
        answer = gets.chomp.downcase
        break if ['h', 's'].include?(answer)
        puts "Sorry, must enter 'h' or 's'."
      end

      if answer == 's'
        puts "#{player.name} stays!"
        break
      elsif player.busted?
        break
      else
        #show update only for hit
        player.add_card(deck.deal_one)
        puts "#{player.name} hits!"
        player.show_hand
        break if player.busted?
      end
    end
  end

  def dealer_turn
    puts "#{dealer.name}'s turn..."

    loop do 
      if dealer.total >= 17 && !dealer.busted?
        puts "#{dealer.name} stays!"
        break
      elsif dealer.busted?
        break
      else
        puts "#{dealer.name} hits!"
        dealer.add_card(deck.deal_one)
      end
    end
  end

  def show_busted
    if player.busted?
      puts "It looks like #{player.name} busted! #{dealer.name} wins!"
    elsif dealer.busted?
      puts "It looks like #{dealer.name} busted! #{player.name} wins!"
    end
  end

  def show_cards
    player.show_hand
    dealer.show_hand
  end

  def show_result
    if player.total > dealer.total
      puts "It looks like #{player.name} wins!"
    elsif player.total < dealer.total
      puts "It looks like #{dealer.name} wins!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if ['y', 'n'].include? answer
      puts "Sorry, must be y or n."
    end

    answer = 'y'
  end

  def start 
    loop do
      system 'clear'
      deal_cards
      show_flop

      player_turn
      if player.busted?
        show_busted
        if play_again?
          reset
          next
        else
          break
        end
      end

      dealer_turn
      if dealer.busted?
        show_busted
        if play_again?
          reset
          next
        else
          break
        end
      end

      #both stayed
      show_cards
      show_result
      play_again? ? reset : break
    end

    puts "Thank you for playing Twenty-One. Goodbye!"
  end
end

game = TwentyOne.new
game.start