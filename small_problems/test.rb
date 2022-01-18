HASH = {
"a" => 1, "e" => 2, "i" => 3, "o" => 4, "u" => 5
}
HASH_KEYS = HASH.keys
HASH_VAL = HASH.values

# def encode(s)
#   string = s.chars
#   string.map! do |x|
#     if HASH_KEYS.include?(x)
#       x = HASH[x]
#     else
#       x
#     end
#   end
#   p string.join
# end
#encode("hello")

p HASH["a"]
p HASH[1]
