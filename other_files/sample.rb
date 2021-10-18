vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(motor)
  motor.to_h { |type, count| }
end

count_occurrences(vehicles)



# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2