class Temperature
	def initialize(options = {})
		@options = options
		@c = @options[:c]
		@f = @options[:f]
	end
	
	def ftoc(num)
		((num.to_f - 32) * 5 / 9).round(1)
	end
	
	def ctof(num)
		((num.to_f * 9 / 5) + 32).round(1)
	end
	
	def in_celsius
		(@options.has_key? :c) ? @c : ftoc(@f)
	end
	
	def in_fahrenheit
		(@options.has_key? :f) ? @f : ctof(@c)
	end
	
	def self.from_celsius(num)
		self.new(:c => num)
	end
	
	def self.from_fahrenheit(num)
		self.new(:f => num)
	end
end

class Celsius < Temperature
	def initialize(num)
		super(:c => num)
	end
end

class Fahrenheit < Temperature
	def initialize(num)
		super(:f => num)
	end
end
