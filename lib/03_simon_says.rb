def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, repeat = 2)
	result = []
	repeat.times { result << string }
	result.join(' ')
end

def start_of_word(string, letters = 1)
	string[0..(letters - 1)]
end

def first_word(string)
	string.split(' ')[0]
end

def titleize(string)
	words = string.split(' ')
	result = []
	words.each_index do |i|
		if (i == 0) || (i == words.length - 1)
			result << words[i].capitalize
		else
			result << to_cap(words[i])
		end
	end
	
	result.join(' ')
end

private

def to_cap(word)
	no_cap = %w(a an the at by for in of on to up and as but it or nor from above \
	about across against along among around before behind below beneath beside \
	between beyond down during except inside into like near off over since toward \
	through under until upon with within)
	
	if no_cap.include?(word)
		word
	else
		word.capitalize
	end
end
