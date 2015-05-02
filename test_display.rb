require 'minitest/autorun'
require './display'

class TestDisplay < Minitest::Test

	def setup
		@display = Display.new({'cat' => 2})
	end

	def test_words_with_frequency_count_display
		assert_equal @display.words, ["Word: cat, Frequency: 2"]
	end

end