=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
	def self.abbreviate(strings)
		words = strings.split(/[\s-]+/)
		
		words.inject('') do |first_letters, words|
		
		first_letters << words.chars[0].upcase
		end
	end
end
	
		# Other solution
		# words.scan(/\b\w/).join.upcase