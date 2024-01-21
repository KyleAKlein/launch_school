def fibonacci(n)
  fib_arr = [1]
  next_num = 1

  n.times do |x|
    fib_arr << next_num
    next_num = fib_arr[-1] + fib_arr[-2]
  end

  return 1 if n == 1
  result = fib_arr[n-1]
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
