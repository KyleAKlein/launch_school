DECK_OF_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King']
SUIT = [' of clubs', ' of hearts', ' of spades', ' of diamonds']

CARDS = DECK_OF_CARDS.product(SUIT)
FACE_CARDS = 'Jack' || 'Queen' || 'King'

player_card_1 = DECK_OF_CARDS.sample
player_card_2 = DECK_OF_CARDS.sample
dealer_card_1 = DECK_OF_CARDS.sample
dealer_card_2 = DECK_OF_CARDS.sample
hit = DECK_OF_CARDS.sample


def card_total(card_1, card_2)
  if card_1 == FACE_CARDS
    card_1 = 10
  else
    card_1
  end

  total = card_1.to_i +  card_2.to_i
  total
end

dealer_total = card_total(dealer_card_1, dealer_card_2)
player_total = card_total(player_card_1, player_card_2)

player_new_total = player_total += hit.to_i


puts "Would you like to play twenty_one?"
answer = gets.chomp

if answer == 'yes'
  puts "Dealer has: #{dealer_card_1} and #{dealer_card_2}. Total:#{dealer_total}"
  puts "Player has: #{player_card_1} and #{player_card_2}. Total:#{player_total}"
end



loop do
  puts "would you like a card?"
  answer = gets.chomp
  if answer == 'h'
    puts "#{hit} #{player_new_total}"
  elsif answer == 's'
    break
  end
end
