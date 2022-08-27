=begin
Given a string, return an array that contain the two words that are intertwined. All characters will be alphabetic and lowercase.

=end

# p mixedup("hweolrllod") ==  ['hello', 'world']
# p mixedup("fbiusmtp") == ['fist', 'bump']
# p mixedup("cmaetosw") == ['cats', 'meow']



# def to_camel_case(str)
#   ans = ''
#   if str.empty?
#     return ''
#   end

#   if str.include?('-')
#     string = str.split('-')
#   elsif str.include?('_')
#     string = str.split('_')
#   end

# string.each_with_index do |word, idx|
#   if idx == 0
#     ans << word
#   else
#     ans << word.capitalize
#   end
# end
#   ans
# end

# p to_camel_case('') == ''
# p to_camel_case("the_stealth_warrior") == "theStealthWarrior" 
# p to_camel_case("The-Stealth-Warrior") == "TheStealthWarrior"
# p to_camel_case("A-B-C") == "ABC"


=begin
consonants forward 9
vowels back 5 

if c or o
  move back 1 
if d
  move back 3
if e
  move back 4
  
if moved letter becomes c, o, d, e
  revert to original letter
  
  
  
# =end
# def get_index(num)
#   if num > 26
#     num-26
#   else
#     num
#   end
# end


# def vowel_back(st)
#   chars = st.chars
#   vowels = 'aeiou'
#   alpha = ('a'..'z').to_a
#   ans_str = ''
  
#   chars.each do |letter|
#     if vowels.include?(letter)
#       ans_str << alpha[get_index(alpha.index(letter)-5)]
#     else
#       ans_str << alpha[get_index(alpha.index(letter)+9)]
#     end
#   end

#   p ans_str
# end


# vowel_back("testcase") == "tabtbvba"
# # vowel_back("codewars") == "bnaafvab"
# # vowel_back("exampletesthere") == "agvvyuatabtqaaa"
# # vowel_back("returnofthespacecamel") == "aatpawnftqabyvbabvvau" 
# # vowel_back("bringonthebootcamp") == "kaiwpnwtqaknntbvvy"
# # vowel_back("weneedanofficedog") == "fawaaavwnffibaanp"
=end

# str = "this string"
# p str.object_id
# arr = str.split

# ans = arr.map! do |x| 
#   x.upcase
# end

# p answer = ans.join(' ')
# p answer.object_id


class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end


  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
p sparky.public_disclosure