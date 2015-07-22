class Dictionary
	def initialize(items = {})
		@items = items
	end
	
  def entries
		@items
	end
	
	def add(to_add)
		(to_add.is_a?(Hash)) ? to_add : to_add = {to_add => nil}
		@items.merge!(to_add)
	end
	
	def keywords
		@items.keys.sort
	end
	
	def include?(word)
		@items.include?(word)
	end
	
	def find(word)
		result = {}
		@items.keys.each do |key|
			(key.include? word) ? result.merge!(@items.select { |k, v| k == key }) : false
		end
		
		result
	end
	
	def printable
		result = ''
		@items.sort.each { |k, v| result << "[#{k}] \"#{v}\"\n" }
		result.chomp
	end
end
