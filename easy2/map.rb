require 'set'

def map(array)
  return_array = []
  array.each {|item| return_array << yield(item)}
  return_array
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]


hash = { bacon: "protein", apple: "fruit" }

p map(hash){|k,v| v}
#hash.map { |k,v| [k, v.to_sym] }.to_h
s1 = Set[1, 2]                        #=> #<Set: {1, 2}>

p map(s1){|item| item*2 }

# Further exploration:
# My solution works for both sets and hashes.