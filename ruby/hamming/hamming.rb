=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
	def self.compute(dnastrand_a, dnastrand_b)
		raise ArgumentError.new if dnastrand_a.length != dnastrand_b.length
		differences = 0
		# turn the two strings into a 2D array containing couples of n-th elements of each string
		# c = a.zip(b)
		sequences = dnastrand_a.chars.zip(dnastrand_b.chars)
		# # increase the differences counter each time a couple doesn't match
		sequences.each {|couple| differences += 1 if couple[0] != couple[1]}
		differences
	end
end

