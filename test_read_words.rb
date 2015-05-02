require 'minitest/autorun'
require './read_words'

class TestReadWords < Minitest::Test

	def setup
		@read_words = ReadWords.new
	end

	def test_single_string
		@read_words.read_string = 'rakesh'
		assert_equal ['rakesh'], @read_words.words
	end

	def test_empty_string
		@read_words.read_string = '    '
		assert_equal [], @read_words.words
		@read_words.read_string = "  \t \n  "
		assert_equal [], @read_words.words
	end

	def test_multiple_words
		@read_words.read_string = ' Dog sat on the Floor   '
		assert_equal ['Dog', 'sat', 'on', 'the', 'Floor'], @read_words.words
	end

end