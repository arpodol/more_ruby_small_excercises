def count(collection)
  total_trues = 0
  collection.each do |item|
    total_trues += 1 if yield(item)
  end
  total_trues
end


puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2

def count_restricted(collection)
  total_trues = 0
  for value in collection do
    total_trues += 1 if yield(value)
  end
  total_trues
end

puts count_restricted([1,2,3,4,5]) { |value| value.odd? } == 3
puts count_restricted([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count_restricted([1,2,3,4,5]) { |value| true } == 5
puts count_restricted([1,2,3,4,5]) { |value| false } == 0
puts count_restricted([]) { |value| value.even? } == 0
puts count_restricted(%w(Four score and seven)) { |value| value.size == 5 } == 2