ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if{ |key, value| value > 100 }
p ages
# remove people with age 100 and greater.