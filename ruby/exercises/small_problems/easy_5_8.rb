NUM_WORDS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

def alphabetic_number_sort(arr)
  number = []
  num_to_words(arr).each do |i|
    number << NUM_WORDS.key(i)
  end
  p number
end

def num_to_words(array)
  ans = []
  array.each do |num|
    if NUM_WORDS.keys.include?(num)
      ans << NUM_WORDS[num]
    end
    ans.sort!
  end
  ans
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# take array of numbers.
# find hash value for number
# push number names into array.
# sort array alphabetically

# take sorted array and find key from value
# return new array with integer keys