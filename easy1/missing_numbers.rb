def missing(array)
  full_array = []
  array.first.upto(array[-1]) {|num| full_array << num}
  full_array - array
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []


def missing_without_block(array)
  full_array = []
  counter = array[0]
  last_value = array[-1]

  while counter < last_value
    unless array.include?(counter)
      full_array << counter
    end
    counter += 1
  end
  full_array
end

puts missing_without_block([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing_without_block([1, 2, 3, 4]) == []
puts missing_without_block([1, 5]) == [2, 3, 4]
puts missing_without_block([6]) == []