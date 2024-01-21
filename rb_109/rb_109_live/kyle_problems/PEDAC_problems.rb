=begin

Below is many lists of methods. Below each list is a list of questions. Each method is only used once
Find the method for each question and insert it in place of the '#method'.
=end

#List 1:
# capitalize concat downcase length prepend reverse swapcase squeeze upcase even? include? clear

#Q:1
"hello world"#method == "dlrow olleh"

#Q:2
"hello world"#method == 11

#Q:3
"hello world"#method == "HELLO WORLD"

#Q:4
"hello world"#method == "helo world"

#Q:5
17#method == false

#Q:6
"hello world"#method('ld') == true

#Q:7
"world"#method('hello ') == "hello world"

#Q:8
"hello world"#method == ""

#Q:9
"Hello World"#method == "hELLO wORLD"

#Q:10
"hello world"#method == "dlrow olleh"

#Q: 11
"hello"#method(' world') == "hello world"

#Q: 12
"Hello World"#method == "hello world"

#List 2:
# abs sample ceil chr delete floor empty? shuffle last pop index first

#Q: 13
"hello world"#method('l') == 2

#Q: 14
"hello world"#method == false

#Q: 15
555#method(-2) == 500

#Q: 16
"hello world"#method == 'h'

#Q: 17
['hello', 'world']#method == 'hello'

#Q: 18
['hello', 'world']#method == 'hello' #(note: run multiples to get a true)

#Q: 19
777.#method(-1) == 780

#Q: 20
-14#method == 14

#Q: 21
'hello world'#method('o') == 'hell wrld'

#Q: 22
['hello', 'world']#method == 'world'

#Q: 23
['hello', 'world']#method == 'world'

#Q: 24
['hello', 'world']#method == ['world', 'hello'] #(note: answer may vary)

p 'a-z'.include?('b')
p 'a-z'.include?('-')