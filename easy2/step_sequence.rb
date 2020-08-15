def step(start, finish, step)
  current_point = start
  while current_point <= finish
    yield(current_point)
    current_point += step
  end
  current_point
end
# The return value is the current_point, the reason being that
# way if the last step was above the finish, one could retrieve
# that value and work with it if we wanted.

step(1, 10, 3) { |value| puts "value = #{value}" }

#value = 1
#value = 4
#value = 7
#value = 10