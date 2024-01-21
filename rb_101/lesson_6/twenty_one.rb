DECK_OF_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King']
SUIT = [' of clubs', ' of hearts', ' of spades', ' of diamonds']

CARDS = DECK_OF_CARDS.product(SUIT)
FACE_CARDS = ['Jack', 'Queen', 'King']

player_card_1 = DECK_OF_CARDS.sample
player_card_2 = DECK_OF_CARDS.sample
dealer_card_1 = DECK_OF_CARDS.sample
dealer_card_2 = DECK_OF_CARDS.sample

def face_check?(card)
  if FACE_CARDS.any?(card)
    card = 10
  else
    card.to_i
  end
end

hit_1 = face_check?(DECK_OF_CARDS.sample)


def hit_2
  face_check?(DECK_OF_CARDS.sample)
end

def hit_3
  face_check?(DECK_OF_CARDS.sample)
end

def hit_4
  face_check?(DECK_OF_CARDS.sample)
end

def hit_5
  face_check?(DECK_OF_CARDS.sample)
end

def card_total(card_1, card_2)
  card_one = face_check?(card_1)
  card_two = face_check?(card_2)
  total = card_one + card_two

  total
end

dealer_total = card_total(dealer_card_1, dealer_card_2)
player_total = card_total(player_card_1, player_card_2)

player_new_total = player_total + hit_1
dealer_new_total = dealer_total + hit_1

#player_n_t = player_new_total << hit

puts "Would you like to play twenty_one?"
answer = gets.chomp
system 'clear'

if answer == 'yes'
  puts "Dealer has: #{dealer_card_1} and #{dealer_card_2}. Total: #{dealer_total}"
  puts "Player has: #{player_card_1} and #{player_card_2}. Total: #{player_total}"
end

loop do
  puts "would you like a card?('h' for hit, 's' stand)"
  answer = gets.chomp.downcase
    if answer == 'h'
      player_new_total = player_total + hit_1
      system 'clear'
      print "You got a #{hit_1},"
        if player_new_total > 21
          puts " you bust!"
          break
        else
          puts " your new total is #{player_new_total}."
        end
    elsif answer == 's'
      player_total
      break
    end
  player_new_total
end


loop do
  if dealer_total < 17
    puts "Dealer hits. Dealer has #{dealer_new_total}."
    break
  elsif dealer_new_total > 17
    break 
  else
    break
  end
end



if player_new_total > 21
  puts "You lost!"
elsif player_new_total > dealer_total
  puts "You won!"
else
  puts "You lost!"
end
