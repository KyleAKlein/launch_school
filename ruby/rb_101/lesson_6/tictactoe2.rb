=begin

Game Rules:
Tic Tac Toe is a 2 player game played on a 3x3 board. Each player takes a turn and
marks a square on the board. First player to reach 3 squares in a row, including diagonals,
wins. If all 9 squares are marked and no player has 3 squares in a row, then the game is a tie.

Sequence:
1. Display the initial empty 3x3 board.
2. Ask the user to mark a square.
3. Computer marks a square.
4. Display the updated board state.
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2
8. Play again?
9. If yes, go to #1
10. Good bye!

=begin 
Sequence:
1. -- Display the initial empty 3x3 board.
2. -- Ask the user to mark a square.
3. Computer marks a square.
  - not to put 'O' if there is an 'X' there 
4. -- Display the updated board state. 
5. If winner, display winner.
6. If board is full, display tie.
7. If neither winner nor board is full, go to #2 # inner loop 
8. Play again?
9. If yes, go to #1 # outer loop 
10. Good bye!
=end 


def prompt(string)
  puts "#{string}"
end

line_1 = "---|---|---"
line_2 = "---|---|---"
line_3 = "---|---|---"


def display_board(line_1, line_2, line_3)
  puts line_1
  puts line_2
  puts line_3
end

def check_line(line)
  arr = [ line[1], line[5], line[9] ]
  arr.all? { |x| x != '-' }

end

def computer_choice(line_1, line_2, line_3)
  arr = [line_1, line_2, line_3]
  if arr.all? { |x| check_line(x) }
  return "hello"
  end

  loop do 
    random = (1..9).to_a.sample
    case random

    when 1
      if valid_choice?(line_1[1])
        line_1[1]= 'O'
        break
      else
        next
      end
    
    when 2
      if valid_choice?(line_1[5])
        line_1[5]= 'O'
        break
      else
        next
      end

    when 3
      if valid_choice?(line_1[9])
        line_1[9]= 'O'
        break
      else
        next
      end
    
    when 4
      if valid_choice?(line_2[1])
        line_2[1]= 'O'
        break
      else
        next
      end

    when 5
      if valid_choice?(line_2[5])
        line_2[5]= 'O'
        break
      else
        next
      end

    when 6
      if valid_choice?(line_2[9])
        line_2[9]= 'O'
        break
      else
        next
      end

    when 7
      if valid_choice?(line_3[1])
        line_3[1]= 'O'
        break
      else
        next
      end
      
    when 8
      if valid_choice?(line_3[5])
        line_3[5]= 'O'
        break
      else
        next
      end

    when 9
      if valid_choice?(line_3[9])
        line_3[9]= 'O'
        break
      else
        next
      end
    end
  end
end

# not to put 'O' if there is an 'X' there 
def valid_choice?(var)
  if var == '-'
    return true
  else
    return false
  end
end



prompt("Welcome to Tic Tac Toe")
prompt("Here's the board:")
display_board(line_1, line_2, line_3)
prompt("You are 'X' and you go first. Each square is 1-9, please select the square you'd like to mark:")

arr1 = [1,5,9]
arr2 = [1,5,9]
arr3 = [1,5,9]

marks = 0

loop do 

  user = gets.chomp

  case user
  when '1' 
    #check valid choice
    if valid_choice?(line_1[1])
      line_1[1] = 'X' 
      computer_choice(line_1, line_2, line_3)
    else
      puts "try again"
    end
  when '2'
    if valid_choice?(line_1[5])
    line_1[5] = 'X'
    computer_choice(line_1, line_2, line_3)
    else 
      puts "try again"
    end 
  when '3'
    if valid_choice?(line_1[9])
    line_1[9] = 'X'
    computer_choice(line_1, line_2, line_3)
    else 
      puts "try again"
    end
  when '4'
    if valid_choice?(line_2[1])
    line_2[1] = 'X'
    computer_choice(line_1, line_2, line_3)
    else 
      puts "try again"
    end
  when '5'
    if valid_choice?(line_2[5])
    line_2[5] = 'X'
    computer_choice(line_1, line_2, line_3)
    else
      puts "try again"
    end
  when '6'
    if valid_choice?(line_2[9])
    line_2[9] = 'X'
    computer_choice(line_1, line_2, line_3)
    else
      puts "try again"
    end 
  when '7'
    if valid_choice?(line_3[1])
    line_3[1] = 'X'
    computer_choice(line_1, line_2, line_3)
    else
      puts "try again"
    end 
  when '8'
    if valid_choice?(line_3[5])
    line_3[5] = 'X'
    computer_choice(line_1, line_2, line_3)
    else 
      puts "try again"
    end 
  when '9'
    if valid_choice?(line_3[9])
    line_3[9] = 'X'
    computer_choice(line_1, line_2, line_3)
    else 
      puts "try again"
    end 
  end
  
  marks += 1
  display_board(line_1, line_2, line_3)
  break if marks > 5
end


# puts "---|---|---"
# puts "---|---|---"
# puts line_3