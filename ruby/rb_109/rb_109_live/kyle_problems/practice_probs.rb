=begin
If we were to set up a Tic-Tac-Toe game, we would want to know whether the board's current state is solved, wouldn't we? Our goal is to create a function that will check that for us!

Assume that the board comes in the form of a 3x3 array, where the value is 0 if a spot is empty, 1 if it is an "X", or 2 if it is an "O", like so:

[[0, 0, 1],
 [0, 1, 2],
 [2, 1, 0]]

 We want our function to return:

-1 if the board is not yet finished AND no one has won yet (there are empty spots),
1 if "X" won,
2 if "O" won,
0 if it's a cat's game (i.e. a draw).
You may assume that the board passed in is valid in the context of a game of Tic-Tac-Toe.

Problem:
  Given an array that represents a tic-tac-toe board, return an integer that represents the result of the game (who won.)

Input:
  3 arrays
Output:
  Integer

Rules:
  Explicit: 
    -Assume board passed in is valid.
    - answer is -1 if board is not yet finished
    - return 1 if 'x' won
    - return 2 if '0' won
    - return 0 if draw
  Implicit:
    -

Data Structures:
      -horizontal
  array 1 (top left to top right)
  array 2 (mid left to mid right)
  array 3 (bottom left to bottom right)
    -verticle
  array 4 (top left to bottom left) array1[0], array2[1], array3[2]
  array 5 (top middle to bottom middle) array1[1], array2[1], array3[1]
  array 6 (top right to bottom right) array1[2], array2[2], array3[2]
    -diagonal
  array 7 (top left to bottom right) array1[0], array2[1], array3[2]
  array 8 (top right to bottom left) array1[2], array2[1], array3[0]
  


Algorithm:
  -create a helper method for each cat. of array.
  - if any method returns a winner, return winner.

  -check if there are no zeros, if there are no zeros, then return a draw


=end

def tic_tac_checker(array)
  if check_horizontal(array) || check_verticle(array) || check_diag == 1
    return 1
  elsif check_horizontal(array) || check_verticle(array) || check_diag == 2
    return 2
  # else
  #   return 0
  end

  array.each do |arr|
    arr.each do |ele|
      if ele =! 0
        next
      else
        return 0
      end
    end
    
  end
  return -1
end

def check_horizontal(array)
  ans = ''
  array.each do |element|
    if element.all? { |x| x == 1 }
       ans = 1
    elsif element.all? { |n| n == 2 }
       ans = 2
    else
       ans = nil
    end
  end
  ans
end

def check_verticle(array)
  ans = nil
  arr1 = [array[0][0], array[1][0], array[2][0]]
  arr2 = [array[0][1], array[1][1], array[2][1]]
  arr3 = [array[0][2], array[1][2], array[2][2]]
  collection = [arr1, arr2, arr3]

  collection.each do |element|
    if element.all? { |x| x == 1 }
       ans = 1
    elsif element.all? { |n| n == 2 }
       ans = 2
    else
       next
    end
  end
  ans
end

def check_diag(array)
  ans = nil
  arr1 = [array[0][0], array[1][1], array[2][2]]
  arr2 = [array[2][0], array[1][1], array[0][2]]

  collection = [arr1, arr2]

  collection.each do |element|
    if element.all? { |x| x == 1 }
       ans = 1
    elsif element.all? { |n| n == 2 }
       ans = 2
    else
       next
    end
  end
  ans
end


p tic_tac_checker([[0, 0, 1],[0, 1, 2],[2, 1, 0]]) == 1
