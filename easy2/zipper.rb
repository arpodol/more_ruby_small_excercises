def zip(array1, array2)
  output_array = []
  array1.length.times do |index|
    output_array << [array1[index], array2[index]]
  end
  output_array
end



p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]