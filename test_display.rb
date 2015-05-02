require 'minitest/autorun'
require './display'

class TestDisplay < Minitest::Test

	def setup
		@display1 = Display.new({'cat' => 2})
		@display2 = Display.new({'cat' => 2, 'dog' => 3, 'sat' => 1, 'on' => 1, 'floor' => 1})
	end

	def test_words_with_frequency_count_display
		assert_equal @display1.words, ["Word: cat, Frequency: 2"]
		assert_equal(
			@display2.words, 
			[ 
				"Word: cat, Frequency: 2", "Word: dog, Frequency: 3", "Word: sat, Frequency: 1",
				"Word: on, Frequency: 1", "Word: floor, Frequency: 1"
			]
		)
	end

end