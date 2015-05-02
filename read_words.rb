class ReadWords

	def read_string=(input_string)
		@input_string = input_string
	end

	attr_reader :input_string

	def words
		input_string.scan(/[\w']+/)
	end

end

############## what changed after writing test case ###########################

#   
# 
# ----------------- Before Test Ease --------------

#		 def initialize(input_string)
#		 	@input_string = input_string
#		 end

# ----------------- After Test Case ----------------

# 	def read_string=(input_string)
# 		@input_string = input_string
# 	end
