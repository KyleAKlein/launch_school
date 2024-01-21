def short_long_short(str, str_2)
	if str.length < str_2.length
		p str + str_2 + str
	else
		p str_2 + str + str_2
	end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"