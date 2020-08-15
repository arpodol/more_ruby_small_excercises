def one?(collection)
  total_trues = 0
  collection.each do |item|
    total_trues += 1 if yield(item)
  end
  total_trues == 1 ? true : false
end

puts one?([1, 3, 5, 6]) { |value| value.even? }  == true  # -> true
puts one?([1, 3, 5, 7]) { |value| value.odd? } == false     # -> false
puts one?([2, 4, 6, 8]) { |value| value.even? } == false    # -> false
puts one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true # -> true
puts one?([1, 3, 5, 7]) { |value| true } == false           # -> false
puts one?([1, 3, 5, 7]) { |value| false } == false          # -> false
puts one?([]) { |value| true } == false