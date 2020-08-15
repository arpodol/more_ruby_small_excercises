def any?(array)
  return_value = false
  position = 0
  while position < array.length && return_value == false
    return_value = yield(array[position])
    position += 1
  end
  return_value

end


puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([1, 3, 5, 7]) { |value| value.even? } == false
puts any?([2, 4, 6, 8]) { |value| value.odd? } == false
puts any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts any?([1, 3, 5, 7]) { |value| true } == true
puts any?([1, 3, 5, 7]) { |value| false } == false
puts any?([]) { |value| true } == false

# Further Exploration
# My solution would require further work to make it work for hashes and other
# data structures
