def divisors(value)
  divisor_array = []
  1.upto(value/2) do |int|
    divisor_array << int if (value % int).zero?
  end
  divisor_array << value
  divisor_array
end

def divisors_opt(value)
  divisor_array = [1]
  lower_setpoint = 1
  upper_setpoint = value
  while lower_setpoint < upper_setpoint
    if (value % lower_setpoint).zero?
      upper_setpoint = value/lower_setpoint
      divisor_array << lower_setpoint && divisor_array << upper_setpoint
    end
    lower_setpoint += 1
  end
  divisor_array.sort.uniq
end


puts divisors_opt(1) == [1]
puts divisors_opt(7) == [1, 7]
puts divisors_opt(12) == [1, 2, 3, 4, 6, 12]
puts divisors_opt(98) == [1, 2, 7, 14, 49, 98]
puts divisors_opt(99400891) == [1, 9967, 9973, 99400891] # may take a minute
puts divisors_opt(999962000357) == [1, 999979, 999983, 999962000357]