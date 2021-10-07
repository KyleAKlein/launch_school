house_animal = { cat: "meow", dog: "bark", bird: "tweet" }
barn_animal = { horse: "nay", pig: "oink", sheep: "baa" }

house_animal.merge(barn_animal)

house_animal.merge!(barn_animal)

cat = {name: "whiskers"}
weight = {weight: "10 lbs"}
puts cat.merge(weight)
puts cat                  # => {:name=>"whiskers"}
puts weight               # => {:weight=>"10 lbs"}
puts cat.merge!(weight)
puts cat                  # => {:name=>"whiskers", :weight=>"10 lbs"}
puts weight  
