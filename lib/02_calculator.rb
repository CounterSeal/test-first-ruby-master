def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(nums)
	result = 0
	nums.each { |n|  result += n }
	result
	#nums.inject(0) { |sum, n| sum + n } <= This works as well!
end

#Bonus
def multiply(*nums)
	nums.inject { |product, n| product * n }
end

def power(num, exp)
	result = 1
	exp.times { result *= num }
	result
	#num ** exp <= This works as well!
end

def factorial(num)
	result = 1
	2.upto(num) { |i| result *= i }
	result
end