class Timer
	attr_accessor :seconds
	
	def initialize(seconds = 0)
		@seconds = seconds
	end
	
	def time_string
		hours = padded(@seconds / 3600)
		minutes = padded((@seconds % 3600) / 60)
		seconds = padded(@seconds % 60)
			
		hours + ':' + minutes + ':' + seconds
	end
	
	def padded(num)
		(num < 10) ? "0#{num}" : num.to_s 
	end
end
