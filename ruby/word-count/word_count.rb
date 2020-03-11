=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
	attr_reader :word

	def initialize(word)
		@word = word
	end

	def word_count
		words.each_with_object(Hash.new(0)) do |item, hash|
			hash[item] += 1
		end
	end

	private

	def words
		word.downcase.scan(/\b[\w']+\b/)
	end
end



# array map & loop and each