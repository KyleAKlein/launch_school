def fizzbuzz(start, fin)
  array = (start..fin).to_a
  array.map! do |num|
    if num % 3 == 0
      num = 'Fizz'
    elsif num % 5 == 0
      num = 'Buzz'
    elsif num % 3 == 0 && num % 5 == 0
      num = 'FizzBuzz'
    else
      num
    end
  end
  array.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz