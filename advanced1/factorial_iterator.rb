
factorial = Enumerator.new do |y|
  a = 1
  b = 1
  loop do
    y << a
    a, b = a * b, b + 1
  end
end

p factorial.next
p factorial.next
p factorial.next
p factorial.next
p factorial.next
p factorial.next
p factorial.next

factorial.rewind

factorial.each_with_index do |integer, index|
  break if index >= 7
  puts integer
end