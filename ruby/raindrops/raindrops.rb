=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
	def self.convert(factor)
    word = ""

    word << 'Pling' if factor % 3 == 0
    word << 'Plang' if factor % 5 == 0
    word << 'Plong' if factor % 7 == 0

    return word.empty?  ? factor.to_s : word
  end
 end