def greetings(arr, hash)
  puts "Hello, #{arr[0]} #{arr[1]} #{arr[2]}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.