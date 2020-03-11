LOOP

each
	# each is the equivalent of a for loop. Use it when you need to
	# iterate on a collection with side effects.

['a', 'b', 'c'].each do |e|
  # do side effects, such as printing to the console,
  # writing to a file, persisting in database, etc.
end


numbers = [1, 3, 5, 7]
numbers.each { |n| puts n }


# This will iterate through all the elements:
array = [1, 2, 3, 4, 5, 6]
array.each { |x| puts x }


# This will iterate through all the elements giving you the value and the index:
array = ["A", "B", "C"]
array.each_with_index {|val, index| puts "#{val} => #{index}" }

map
------------
[1, 2, 3].map { |e| e * 2 } # returns [2, 4, 6]

['a', 'b', 'c'].map { |e| e.upcase } # returns ['A', 'B', 'C']

select
------------
# Very useful when you need to filter (i.e. “select”) multiple values.
[1, 2, 3, 4].select { |e| e % 2 == 0 } # returns [2, 4]


reject
------------
# The contrary of select
[1, 2, 3, 4].reject { |e| e % 2 == 0 } # returns [1, 3]


partition
# select + reject
------------------
[2, 3, 4, 5].partition { |e| e.even? } # returns [[2, 4], [3, 5]]

all?
--------
[2, 4, 6].all? { |e| e.even? } # returns true

any?
---------
[3, 8, 42].any? { |e| e > 10 } # returns true

# By the way, use the “no block” form of any? to ask if something “has any” significant element:

# [3, 4].any? returns true
# [].any? returns false
# [nil].any? returns false
# [false].any? returns false

time
---------
3.times { puts 'Hello world!' } # prints 'Hello world!' 3 times

3.times { |i| puts i } # prints '0', '1' and '2'

Sorting methods
----------------
[7, 2, 5].sort # returns [2, 5, 7]
['c', 'b', 'a'].sort # returns ['a', 'b', 'c']

employees.sort_by {|e| e.last_name} # sort your employees by last name

['a', 'b', 'c'].each_with_index do |e, i|
  # do stuff
end

['a', 'b', 'c'].map.with_index do |e, i|
  # do stuff
end


# Collection methods will probably cover 90% of your needs.
# What is certain is that you won’t need to use a for loop ever again.
# However, there are cases when the number of iterations in not known in advance:
# if you work on an algorithm or low-level code, for example.
# This is a typical job for while and until. In this case, these explicit loops are ok to use.
Explicit loops
--------------
finished = false
until finished
  # do stuff
end

x = 100
while x > 0
  # do stuff
end

zip
--------------
c = a.zip(b).count { |a,b| a == b }