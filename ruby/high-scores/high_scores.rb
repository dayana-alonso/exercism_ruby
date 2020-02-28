=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end


class HighScores
	attr_reader :list_scores

	def initialize(list_scores)
		@list_scores = list_scores
	end

	def scores
		list_scores
	end

	def latest
		list_scores.pop
	end

	def personal_best
		list_scores.sort.pop
	end

	def personal_top_three
		list_scores.sort.pop(3).reverse
	end

	def latest_is_personal_best?
		latest = list_scores.pop
		highest = list_scores.sort.pop
		latest >= highest
	end

end
