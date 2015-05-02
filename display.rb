class Display

	def initialize(frequency_hash)
		@frequency_hash = frequency_hash
	end

	attr_reader :frequency_hash

	# to do improve the below method

	def words
		frequency_hash.map do |key, value|
			"Word: #{key}, Frequency: #{value}"
		end
	end

end