flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.select {|element| element.start_with?('Be')}

# Find the index of the first name that starts with "Be"