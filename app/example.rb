require 'pry'
require_relative '../model/person'

arr = [1, 2, 3]
some_bool = true
sym = :some_sym
puts "arr = #{arr}, and some_bool = #{some_bool}, sym = #{sym}"

h = {
  :a => 1,
  :b => 'str',
  :c => true,
  1 => 'hi',
  true => 'hello',
  'key' => 'value',
  :arr => arr,
  [1, 2, 3] => 'an array as key',
  {:a => 'a'} => 'an hash as key'
}
puts "a simple hash: #{h}"

some_var = nil
puts "is some_var nil: #{some_var.nil?}"

parts = 16.divmod(5)
mult = parts[0]
rem = parts[1]
puts "The multiplier part of 16.divmod(5) is #{mult}, and the remainder part is #{rem}"

str_one = '1'
num_one = 1
puts "adding string one with number one converted to string: #{str_one + num_one.to_s}"
puts "adding string one converted to number with number one: #{str_one.to_i + num_one}"

movies = [{
  :title => 'The Spiderman',
  :year => 2021
}, {
  :title => 'The Matrix',
  :year => 1998
}]

years = []
puts "printing years of some movies:"
movies.each do |movie|
  puts movie[:year]
  years << movie[:year]
end
puts "years: #{years}"

def factorial(num)
  (1..num).to_a.reduce(:*)
end

[5, 8, 10, 20].each do |num|
  puts "factorial of #{num}: #{factorial(num)}"
end

arr = [1 ,2, 3]
for i in arr do 
  b = 5
end
puts "b is accessable here, loop does not create an inner scope in Ruby. b = #{b}"

# puts "What's your name?"
# name = gets
# puts "Hi, #{name.strip}!"

a = 3
a = 5
puts "It's ok to overwrite variables: #{a}"
A = 3
A = 5
puts "Constants is mutable but that's not a good idea. You got a warnning for that: #{A}"
$a = 6
puts "Variables starts with a dollar sign is a global variable app-wise: #{$a}"

alice = Person.new
puts "Here we got a person instance: #{alice}"
bob = Person.new
puts "Total people in person class: #{Person.total_people}"
