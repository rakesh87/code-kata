require 'minitest/autorun'
require './words_frequency'

class TestWordsFrequency < Minitest::Test

	def setup
		@words_frequency = WordsFrequency.new(['cat', 'dog', 'same', 'run' 'as', 'cat', 'dog'])
		@empty_words_frequency = WordsFrequency.new([])
	end

	def test_empty_words_list
		assert_equal({}, @empty_words_frequency.count)
	end

	def test_word_list
		assert_equal({"cat"=>2, "dog"=>2, "same"=>1, "runas"=>1}, @words_frequency.count)
	end
end