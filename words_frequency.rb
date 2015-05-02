class WordsFrequency

	def initialize(words_array)
		@words_array = words_array
	end

	attr_reader :words_array

	def count
		counts = Hash.new(0)
		words_array.each do |word|
			counts[word] += 1
		end
		counts
	end

end

############## what changed after writing test case ###########################
#
#  class seems ok no changes for now   
# 
