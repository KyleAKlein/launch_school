# Ruby Master Notes

# Notes from Introduction to Programming with Ruby by Launch School


# A Literal is any notation that lets you represent 
# a fixed value in source code

'Hello, world!'          // string literal
375                      // integer literal
3.141528                 // float literal
true                     // boolean literal
{ 'a' => 1, 'b' => 2 }   // hash literal
[ 1, 2, 3 ]              // array literal
:sym                     // symbol literal
nil                      // nil literal


# A String is a list of characters in a specific sequence
# You write string literals with either single quotes ('hi there') 
# or double quotes ("hi there") on either side of the text; 
# note that the quotes are syntactic components, not part of the value. 
# Both single and double quote formats create a string.

# To include singel quotes you have two options:

# Ex. 1: with double quotes
"The man said, 'Hi there!'"

# Ex 2: with single quotes and escaping
'The man said, \'Hi there!\''

# Double quotes allow something called String Interpolation
# the basic syntax is  # {ruby expression goes here}
# String interpolation only works within double quotes

a = 'ten'

"My favorite number is #{a}!"


# Ruby Symbols are created by placing a colon (:) before a word.# Examples of symbols

:name
:a_symbol
:"surprisingly, this is also a symbol"

# Basically, a symbol is used when you want to reference something like a string 
# but don't ever intend to print it to the screen or change it. 
# It is often referred to as an immutable (i.e. unchangeable) string. 
# While not 100% technically correct, it is a useful mnemonic device for now.


# Numbers are represented in many ways, like an Interger, whole number. Or a Float, a number
# with a decimal.

# Example of integer literals
1, 2, 3, 50, 10, 4345098098

# Example of float literals
1.2345, 2345.4267, 98.2234


# In programming we need a way to express nothing, in Ruby it is called Nil.
# A variable with a value of nil could be described as having 'nothing' 
# or being 'completely empty', or even just simply 'not any specific type'
# A situation where this may occur is where output is expected but none is returned, such as:

irb :001 > puts "Hello, World!"
Hello, World!
=> nil

# The puts method prints out a string and returns nothing, 
# so we see nil being returned after the string is displayed.

irb :001 > if 1
irb :002 > puts "Hello, World!"
irb :003 > end
Hello, World!
=> nil

# nil can be used within a conditional statement, and will be treated as false.

irb :001 > false == nil
=> false

# While both false and nil are both treated as negative when evaluated in an expression, 
# they are not equivalent, as demonstrated by the above.


# Operations

irb :001 > 1 + 1
=> 2

irb :001 > 1 - 1
=> 0

irb :001 > 4 * 4
=> 16

irb :001 > 16 / 4
=> 4

# In modulo expressions, the value to the left of the % is called the dividend, 
# and the value to the right is called the modulus.

irb :001 > 16 % 4
=> 0
# or
irb :001 > 16 % 5
=> 1

# Modulo vs. Remainder
# the remainder method computes and returns the remainder of an integer division operation:

irb :001 > 16.remainder(5)
=> 1

# There is also a #divmod method that computes both the integer 
# result of the division and its modulo value.

irb :001 > 16.divmod(5)
=> \[3, 1\]

# Whenever you use a Float in an operation, 
# Ruby always returns a Float, even if one of the numbers is a plain integer.

irb :001 > 15.0 / 4
=> 3.75

irb :001 > 9.75 * 4.32
=> 42.120000000000005


# Equality Comparison
# read == as "is equal to" or, sometimes, as "equal equal"
# it compares left vs right and returns a true or false Boolean

irb :001 > 4 == 4
=> true

irb :002 > 4 == 5
=> false


# String Concatenation looks a lot like addition.

irb :001 > 'foo' + 'foo'
=> "foofoo"

irb :002 > 'foo' + 'bar'
=> "foobar"

irb :001 > '1' + '1'
=> '11'


# Type Conversion
# what if we need to add a String and an Integer together? 
# Suppose we got some user input of '12', which is a String, 
# but we want to increment this by 2. 
# We know that we can't just do '12' + 2, as we'll get an error.

# handy method to call which will convert a String to a Integer, and it's called to_i

irb :001 > '12'.to_i
=> 12

irb :001 > '4'.to_i
=> 4

irb :002 > '4 hi there'.to_i
=> 4

irb :003 > 'hi there 4'.to_i
=> 0

# method to Float called .to_f

irb :004 > '4'.to_f
=> 4.0

irb :005 > '4 hi there'.to_f
=> 4.0

irb :006 > 'hi there 4'.to_f
=> 0.0

# method for String called .to_s
irb(main):001:0> 4.to_s
=> "4"


# Basic Data Structures
# An array is used to organize information into an ordered list

irb :001 > [1, 2, 3, 4, 5]
=> [1, 2, 3, 4, 5]

# each element can be accesed via an index that starts at [0]

irb :001 > [ 1, 2, 3, 4, 5][0]
=> 1

# A hash, sometimes referred to as a dictionary, is a set of key-value pairs

irb :001 > {:dog => 'barks'}
=> {:dog => 'barks'}

irb :001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}
=> {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}

irb :001 > {:dog => 'barks', :cat => 'meows', :pig => 'oinks'}[:cat]
=> "meows"

# The most important thing to remember about hashes is that you use keys to set or retrieve values. 


# An expression is anything that can be evaluated, 
# and pretty much everything you write in Ruby is an expression
# An expression in Ruby always returns something, even if that's an error message or nil

#  the difference between puts and return

irb :001 > puts 'stuff'
stuff
=> nil


# Variables are used to store information to be referenced 
# and manipulated in a computer program
# It is helpful to think of variables as containers that hold information

# The name of the variable goes on the left 
# and the value you want to store in the variable goes on the right

irb :001 > first_name = 'Joe'
=> "Joe"

irb :002 > first_name
=> "Joe"


irb :001 > a = 4
=> 4
irb :002 > b = a
=> 4
irb :003 > a = 7
=> 7

# What is the value of b at this point?
# b remains 4


# Getting Data from a user
# gets method

irb :001 > name = gets
Bob
=> "Bob\n"

# The \n at the end is the "newline" character and represents the enter key
# you can put .chomp after any string to remove the carriage return characters at the end

irb :001 > name = gets.chomp
Bob
=> "Bob"

irb :001 > name = gets.chomp
Bob
=> "Bob"
irb :002 > name + ' is super great!'
=> "Bob is super great!"


# A variable's scope is defined by where the variable is initialized or created. 
# In Ruby, variable scope is defined by a method definition or by a block.

name = 'Somebody Else'

def print_full_name(first_name, last_name)
  name = first_name + ' ' + last_name
  puts name
end

print_full_name 'Peter', 'Henry'   # prints Pete Henry
print_full_name 'Lynn', 'Blake'    # prints Lynn Blake
print_full_name 'Kim', 'Johansson' # prints Kim Johansson
puts name     

# In terms of variable scope, methods have self-contained scope. 
# That means that you can't refer to or 
# modify any variables that aren't initialized inside the method's body, 
# and none of the variables initialized by the method are available outside the method's body

# A block is a piece of code that follows a method's invocation, 
# delimited by either curly braces {} or do/end:

total = 0
[1, 2, 3].each { |number| total += number }
puts total # 6

total = 0
[1, 2, 3].each do |number|
  total += number
end
puts total # 6

# both blocks can access and modify total but variables inside the block like
# number can't be accessed by outer code

# Be aware that not all do...end pairs imply a block. 
# In particular, a do...end on a for or while loop is not a block.

# There are five types of variables. 
# Constants, global variables, class variables, instance variables, and local variables

# constant declaration:
MY_CONSTANT = 'I am available throughout your app.'

# global variable declaration:
$var = 'I am also available throughout your app.'

# class variable declaration:
@@instances = 0

# instance variable declaration:
@var = 'I am available throughout the current instance of this class.'

# local variable declaration:
var = 'I must be passed around to cross scope boundaries.'


# Methods
def say
  # method body goes here
end

# without method
puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

# with method
def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

# We call (or invoke) the method by typing its name and passing in arguments. 
# You'll notice that there's a (words) after say in the method definition. 
# This is what's called a parameter. 
# Parameters are used when you have data outside of a method definition's scope, 
# but you need access to it within the method definition. 
# If the method definition does not need access to any outside data, 
# you do not need to define any parameters.

# You will also see the term method invocation to refer to calling a method.

# Arguments are pieces of information that are sent to a method invocation to be modified 
# or used to return a specific result

# We "pass" arguments to a method when we call it
# When we call say("hello"), 
# we pass in the string "hello" as the argument in place for the (words) parameter


# default parameters: structure your method definition so that it always works

def say(words='hello')
  puts words + '.'
end

say()
say("hi")
say("how are you")
say("I'm fine")

# You'll notice that say() prints hello. to the console. 
# We have provided a default parameter that is used whenever 
# our method is called without any arguments


# don't mix up method invocation with a block and method definition

# Method invocation with a block

[1, 2, 3].each do |num|
  puts num
end

# Method definition

def print_num(num)
  puts num
end


# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

a = [1, 2, 3]

# Example of a method definition that does not mutate the caller
def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{a}"
no_mutate(a)
p "After no_mutate method: #{a}"


def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

# Ruby methods ALWAYS return the evaluated result 
# of the last line of the expression unless an explicit return comes before it.

def add_three(number)
  return number + 3
end

returned_value = add_three(4)
puts returned_value


# Chaining Methods
def add_three(n)
  n + 3
end

add_three(5)    

add_three(5).times { puts 'this should print 8 times'}


# In Ruby, it's common to see methods being chained together to form elegant code

"hi there".length.to_s

# This is because the String length method returns an integer, 
# and we can call to_s on integers to convert them into strings.


# The Call Stack
# The call stack helps Ruby keep track of what method is executing 
# as well as where execution should resume when it returns


# The call stack has a limited size that varies based on the Ruby implementation. 
# That size is usually sufficient for more than 10000 stack entries. 
# If the stack runs out of room, you will see a SystemStackError exception.


#  Conditional Flow
#  You want data to do the right thing when it's supposed to

# Conditionals are formed using a combination of if statements and comparison 
# and logical operators (<, >, <=, >=, ==, !=, &&, ||). They are basic 
# logical structures that are defined with the reserved words 
# if, else, elsif, and end


puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3, nor 4"
end

# Example 1
if x == 3
  puts "x is 3"
end

# Example 2
if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

# Example 3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# Example 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

# also acceptable:
puts "x is 3" if x == 3

# Ruby has a reserved word, unless, that works the opposite of if:
puts "x is NOT 3" unless x == 3


# Comparison

irb :001 > 4 < 5
=> true

irb :002 > 4 > 5
=> false

irb :003 > "4" < "5"
=> true

irb :004 > "4" > "5"
=> false

irb :005 > "42" < "402"
=> false

irb :006 > "42" > "402"
=> true

irb :007 > "42" < "420"
=> true

irb :008 > "42" < 420
ArgumentError (comparison of String with 420 failed)

irb :009 > 42 > "420"
ArgumentError (comparison of Integer with String failed)

# see 005, 006, 007
# When comparing strings, the comparison is character-by-character. 
# Ruby moves from left-to-right in the strings looking for the first character 
# that is different from its counterpart in the other string


# Ternary Operation
# The ternary operator is a common Ruby idiom that makes a quick 
# if/else statement easy and keeps it all on one line

irb :001 > true ? "this is true" : "this is not true"
=> "this is true"

irb :001 > false ? "this is true" : "this is not true"
=> "this is not true"


# Case Statement
#  A case statement has similar functionality to an if statement 
# but with a slightly different interface

# Case statements use the reserved words case, when, else, and end

# case_statement.rb <-- refactored

a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer


a = 5
if a
	puts "how can this be true?"
else
	puts "it is not true."
end

# In Ruby, every expression evaluates as true when used in flow control, 
# except for false and nil.


# Loop
# A loop is the repetitive execution of a piece of code 
# for a given amount of repetitions or until a certain condition is met. 
# We will cover while loops, do/while loops, and for loops.

loop do
	puts "this will keep printing until you hit Ctrl + c "
end

# Loop break

# The break keyword allows us to exit a loop at any point, so any code after a break 
# will not be executed. Note that break will not exit the program, 
# but only exit the loop and execution will continue on from after the loop.

i = 0
loop do
	i = i + 1
	puts i
	break     # this will cause execution to exit the loop
end

# Loop Next

i = 0
loop do
	i = i + 2
	if i == 4
		next
	end
  puts i
	if i == 10
		break
	end
end

# break and next are important loop concepts


loop do
  x = 42
  break
end
puts x 

# when block is passed to loop, the "puts x" is outside the scope and will return error

# But you can change value
x = 42
loop do
  puts x   # Prints 42 -- x is in scope inside the block
  x = 2    # We can even change the value of x
  break
end
puts x

# A while loop is given a parameter that evaluates as either true or false

# countdown.rb
x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"

# If you ever find your program unresponsive, 
# it's possible that it is stuck in an infinite loop.

# The until loop is simply the opposite of the while loop
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"

# As with while loops, until is not a method. 
# Therefore, until loops do not have their own scope.

# A do/while loop works in a similar way to a while loop; 
# one important difference is that the code within the loop gets executed one time, 
# prior to the conditional check to see if the code should be executed.

loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer == 'Y'
    break
  end
end

# for loops
# for loops are used to loop over a collection of elements

x = gets.chomp.to_i

for i in 1..x do
  puts x - i
end

puts "Done!"

# countdown4.rb

x = [1, 2, 3, 4, 5]

for i in x.reverse do
  puts i
end

puts "Done!"

# a for loop does not have its own scope

# conditional while loop
x = 0

while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

# If you place the next reserved word in a loop, 
# it will jump from that line to the next 
# loop iteration without executing the code beneath it.

x = 0

while x <= 10
	if x == 3
		x += 1
		next
	elsif x.odd?
		puts x
	end
	x += 1
end

#break 

x = 0

while x <= 10
	if x == 7 
		break
	elsif x.odd?
		puts x
	end
	x += 1
end


# Loops are basic constructs in any programming language, 
# but most Rubyists, where possible, prefer iterators over loops. 

# Iterators are methods that naturally loop over a given set of data and 
# allow you to operate on each element in the collection.

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

names.each { |name| puts name }


# A block is just some lines of code ready to be executed

# By convention, we use the curly braces ({}) when everything can be 
# contained in one line. 
# We use the words do and end when we are performing multi-line operations

names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

# Recursion is another way to create a loop in Ruby

def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)


# Arrays

irb :002 > array = [1, 'Bob', 4.33, 'another string']

irb :003 > array.first
=> 1

irb :004 > array.last
=> "another string"

irb :005 > array[3]
# 'another string'

irb :007 > array.pop
=> "another string"
irb :008 > array
=> [1, "Bob", 4.33]

irb :009 > array.push("another string")
=> [1, "Bob", 4.33, "another string"]
# push adds value to the end of the array

irb :010 > array.pop
=> "another string"
irb :011 > array << "another string"
=> [1, "Bob", 4.33, "another string"]
# << (shovel) is like push

irb :001 > a = [1, 2, 3, 4]
=> [1, 2, 3, 4]
irb :002 > a.map { |num| num**2 }
=> [1, 4, 9, 16]
irb :003 > a.collect { |num| num**2 }
=> [1, 4, 9, 16]
irb :004 > a
=> [1, 2, 3, 4]

# notice how the methods don't mutate.

# How do you know which methods mutate the caller and which ones don't? 
# You have to use the methods and pay attention to the output in irb; 
# that is, you have to memorize or know through using it.

# .delete_at mutates the caller
irb :005 > a.delete_at(1)
=> 2
irb :006 > a
=> [1, 3, 4]

# delete for when you don't know the index
irb :007 > my_pets = ["cat", "dog", "bird", "cat", "snake"]
=> ["cat", "dog", "bird", "cat", "snake"]
irb :008 > my_pets.delete("cat")
=> "cat"
irb :009 > my_pets
=> ["dog", "bird", "snake"]

# .uniq 
irb(main):001:0> b = [1,1,2,2,3,3,4,4]
=> [1, 1, 2, 2, 3, 3, 4, 4]
irb(main):002:0> b.uniq
=> [1, 2, 3, 4]
irb(main):003:0> b
=> [1, 1, 2, 2, 3, 3, 4, 4]
irb(main):004:0> 
# doesn't mutate

# However .uniq! is destructive.
irb(main):004:0> b.uniq!
=> [1, 2, 3, 4]
irb(main):005:0> b
=> [1, 2, 3, 4]

# select method
irb(main):001:0> numbers = [1,2,3,4,5,6,7,8,9,10]
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
irb(main):002:0> numbers.select { |number| number > 4 }
=> [5, 6, 7, 8, 9, 10]
irb(main):003:0> numbers
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


# The bang suffix (!) at the end of the method name usually indicates 
# that the method will change (or mutate) the caller permanently
# BUT you have to check documentation to see if that's true

# also note methods like, pop and push, mutate the caller
# but are not destructive.

def mutate(arr)
	arr.pop
end

def not_mutate(arr)
	arr.select { |i| i > 3 }
end

a = [ 1,2,3,4,5,6 ]
mutate(a)
not_mutate(a)

puts a

# arrays inside arrays
irb(main):001:0> teams = [['Joe', 'Steve'], ['Frank', 'Molly',], ['Dan', 'Sara']]
=> [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
irb(main):002:0> teams[1]
=> ["Frank", "Molly"]

# compare arrays

irb(main):001:0> a = [1,2,3]
=> [1, 2, 3]
irb(main):002:0> b = [2,3,4]
=> [2, 3, 4]
irb(main):003:0> a == b
=> false
irb(main):004:0> b.pop
=> 4
irb(main):005:0> b.unshift(1)
=> [1, 2, 3]
irb(main):006:0> a == b

# .unshift add value to the beginning of the array


# .include? is a predicate (has a question mark and expects boolean value)


# flatten
irb(main):002:0> a = [1,2, [3,4,5], [6,7]]
=> [1, 2, [3, 4, 5], [6, 7]]
irb(main):003:0> a.flatten
=> [1, 2, 3, 4, 5, 6, 7]

# each_index

a = [1,2,3,4,5]
a.each_index { |i| puts "This is index #{i}" }

# each_with_index
a = [1,2,3,4,5]
a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }

# .sort
a = [ 5,3,8,2,4,1 ]
puts a.sort

# .product


# modify array item's value using index not 'margaret'
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

puts names

# Hashes
# A hash is a data structure that stores items 
# by associated keys. This is contrasted against arrays, 
# which store items by an ordered index
# often referred to as key-value pairs

irb :001 > old_syntax_hash = {:name => 'bob'}
=> {:name=>'bob'}

irb :002 > new_hash = {name: 'bob'}
=> {:name=>'bob'}

irb :003 > person = { height: '6 ft', weight: '160 lbs' }
=> {:height=>'6 ft', :weight=>'160 lbs'}

# notice how to add info. variable[:key] = value
irb :004 > person[:hair] = 'brown'
=> "brown"
irb :005 > person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

irb :006> person[:age] = 62
=> 62
irb :007> person
=> {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}

# to delete.  variable.delete(:key)
person.delete(:age)

# retrieve info
person[:weight]

# merge two hashes.  hash_1.merge!(hash_2)
person.merge!(new_hash)


# iterating over hashes
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
	puts "Bob's #{key} is #{value}"
end

# Hashes with optional parameters

def greetings(name, options = {})
	if options.empty?
		puts "Hi, my name is #{name}"
	else
		puts "Hi, my name is #{name} and I'm #{options[:age]}" + " years old and I live in #{options[:city]}."
	end
end

greetings("Bob")
greetings("Bob", {age: 62, city: "New York City"})

# note the curry brackets can be removed when the hash
# is the last argument.

greeting("Bob", age: 62, city: "New York City")
# remember this when deciphering Rails code.

# When deciding whether to use a hash or an array, 
# ask yourself a few questions:

# Does this data need to be associated with a specific label? 
# If yes, use a hash. If the data doesn't have a natural label,
# then typically an array will work fine.

# Does order matter? If yes, then use an array. 
# As of Ruby 1.9, hashes also maintain order, but 
# usually ordered items are stored in an array.

# Do I need a "stack" or a "queue" structure? 
# Arrays are good at mimicking simple "first-in-first-out" 
# queues, or "last-in-first-out" stacks.


# .key?
# checks if a hash contains a specific key.
irb :001 > name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}
irb :002 > name_and_age.key?("Steve")
=> true
irb :003 > name_and_age.key?("Larry")
=> false

# .select
# The select method allows you to pass a block and 
# will return any key-value pairs 
# that evaluate to true when passed to the block
irb(main):001:0> name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}
irb(main):002:0> name_and_age.select {  |k,v| k == "Bob" }
=> {"Bob"=>42}
irb(main):003:0> name_and_age.select {  |k,v| (k == "Bob") || (v == 19) }
=> {"Bob"=>42, "Joe"=>19}


# .fetch
# The fetch method allows you to pass a given key and it will 
# return the value for that key if it exists
irb(main):002:0> name_and_age.fetch("Steve")
=> 31

# you can specify an option for return if that key is not present
irb :008 > name_and_age.fetch("Larry", "Larry isn't in this hash")
=> "Larry isn't in this hash"

# .to_a
# returns an array version of your hash

irb :009 > name_and_age.to_a
=> [["Bob", 42], ["Steve", 31], ["Joe", 19]]
irb :010 > name_and_age
=> {"Bob"=>42, "Steve"=>31, "Joe"=>19}

# keys and values

irb :0011 > name_and_age.keys
=> ["Bob", "Steve", "Joe"]
irb :0012 > name_and_age.values
=> [42, 31, 19]
#Notice that the returned values are in array format. 
# Because it's returning an array, you can do interesting 
# things like printing out all the keys in a hash: 
# name_and_age.keys.each { |k| puts k }.


# The only rule of thumb is that you should define all your methods 
# before you try to invoke the first one
# This is why Rubyists almost always put the main program code at the 
# bottom of the program after all methods have been declared.


# Ampersand(&) allows a block to be passed as a parameter.
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }