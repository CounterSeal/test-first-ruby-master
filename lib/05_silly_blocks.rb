def reverser
	words = yield.split(' ')
	words.each { |x| x.reverse! }
	words.join(' ')
end

def adder(n = 1)
	yield + n
end

def repeater(n = 1)
	n.times { yield }
end
