def compute
  block_given? ? yield : 'Does not compute.'
end

puts compute { 5 + 3 } == 8
puts compute { 'a' + 'b' } == 'ab'
puts compute == 'Does not compute.'

def compute_with_param(param)
  block_given? ? yield(param) : 'Does not compute.'
end

puts compute_with_param(5) { |number| number + 3 } == 8
puts compute_with_param('a') { |letter| letter + 'b' } == 'ab'
puts compute_with_param(22) == 'Does not compute.'