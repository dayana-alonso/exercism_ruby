=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end


class HighScores
	attr_reader :list_points

	def initialize(list_points)
		@list_points = list_points
	end

	def scores
		list_points
	end

	def latest
		list_points.pop
	end

	def personal_best
		list_points.max
	end

	def personal_top_three
		list_points.sort.pop(3).reverse
	end

	def latest_is_personal_best?
		latest = list_points.pop
		highest = list_points.max
		latest >= highest
	end

end
