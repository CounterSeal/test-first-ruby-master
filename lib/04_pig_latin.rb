module PigLatin
	def translate(string)
		alphabet = ('a'..'z').to_a
		vowels = ['a', 'e', 'i', 'o', 'u']
		consonants = alphabet - vowels
		
		words_arr = string.split(' ')
		result = []
		
		words_arr.each do |w|
			word = w.downcase.split('')
			if vowels.include?(word[0])
				word << 'ay'
			else
				while consonants.include?(word[0])
					(word[0] == 'q') && (word[1] == 'u') ? word << word.shift(2) : word << word.shift
				end
				
				word << 'ay'
			end
			
			new_word = word.join('')
			new_word.punctuation
			w.capitalize == w ? result << new_word.capitalize : result << new_word
		end
		
		result.join(' ')
	end
	
	protected
	
	def punctuation
		x = self =~ /\W/
		self << self.slice!(x) unless x == nil #Only retains punctuation at the end of a word
	end
end

include PigLatin
