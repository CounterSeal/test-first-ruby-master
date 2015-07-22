class RPNCalculator
	def initialize
		@stack = []
	end
	
	def push(n)
		@stack << n
	end
	
	def plus
		raise_error
		to_add = @stack.pop(2)
		result = to_add[0] + to_add[1]
		@stack << result
	end
	
	def minus
		raise_error
		to_subtract = @stack.pop(2)
		result = to_subtract[0] - to_subtract[1]
		@stack << result
	end
	
	def times
		raise_error
		to_multiply = @stack.pop(2)
		result = to_multiply[0] * to_multiply[1]
		@stack << result
	end
	
	def divide
		raise_error
		to_divide = @stack.pop(2)
		result = to_divide[0].to_f / to_divide[1].to_f
		@stack << result
	end
	
	def value
		@stack.last
	end
	
	def tokens(string)
		token_stack = []
		string.split.each do |i|
			if is_numeric(i)
				token_stack << i.to_i
			elsif (i == '+') || (i == '-') || (i == '*') || (i == '/')
				token_stack << i.to_sym
			end
		end
		
		token_stack
	end

	def evaluate(string)
		tokens(string).each do |n|
			if n.is_a? Integer
				@stack << n
			else
				(n == :+) ? self.plus : false
				(n == :-) ? self.minus : false
				(n == :*) ? self.times : false
				(n == :/) ? self.divide : false
			end
		end
		
		self.value
	end
	
	protected
	
	def raise_error
		raise 'calculator is empty' if @stack.empty?
	end
	
	def is_numeric(n)
		n.to_i.to_s == n ? true : false
	end
end
