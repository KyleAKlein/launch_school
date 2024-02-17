words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
'flow', 'neon']

output = {}
words.each do |word|
  key = word.split('').sort.join
  if output.has_key?(key)
    output[key].push(word)
  else
    output[key] = [word]
  end
end 

output.each_value do |v|
  puts "------"
  p v
end