=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  attr_reader :series

	  def initialize(series)
	    @series = series.chars
	  end

	  def slices(length)
	    unless length <= series.length
				raise ArgumentError, 'Slices length cannot be longer than series length'
	    end

	    series.each_cons(length).map(&:join)
	  end
end