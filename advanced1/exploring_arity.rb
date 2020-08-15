# Group 1
=begin
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# For a proc, if one doesn't supply an argument to "call" it doesn't throw an error.
# Instead, it simply passes nil.
=end

=begin
# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
#my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# For a lambda, if one doesn't pass in a parameter for call, it throws an error.
# There are also two ways to create a lambda, both using lambda and -> ().
# It also looks like you cannot use Lambda.new.
# Lambdas are a type of proc.
=end

=begin
# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

# If one yields to a block without passing in an argument it defaults to nil.
# If one yields without a block, there will be a local jump error.

=end

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# For blocks, if a variable is not yielded to the block variable,
# it is nil.
# Variables scoped in the method are not in scope in the block.






