class Book
	attr_accessor :title
	
	def title
		words = @title.split(' ')
		result = []
		words.each_index do |i|
			if (i == 0) || (i == words.length - 1)
				result << words[i].capitalize
			else
				result << articles(words[i])
			end
		end
		
		result.join(' ')
	end
	
	protected
	
	def articles(word)
		no_cap = %w(a an the at by for in of on to up and as but it or nor from above \
		about across against along among around before behind below beneath beside \
		between beyond down during except inside into like near off over since toward \
		through under until upon with within)
		
		no_cap.include?(word) ? word : word.capitalize
	end
end
