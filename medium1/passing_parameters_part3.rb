items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

puts "-----#1------"

gather(items) do | *vegetables, grain|
  puts vegetables.join(', ')
  puts grain
end
puts "-----#2------"
gather(items) do |apples ,*c_veggies , grain|
  puts apples
  puts c_veggies.join(', ')
  puts grain
end
puts "-----#3------"
gather(items) do | apples, *remainder|
  puts apples
  puts remainder.join(', ')
end
puts "-----#4------"
gather(items) do | apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end