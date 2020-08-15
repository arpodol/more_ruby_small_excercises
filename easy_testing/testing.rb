# Boolean Assertion
assert value.odd?, 'non odd value'

# Equality Assertion
assert_equal 'xyz', value.downcase

# Nil assertions
assert_nil value

# Empty Object Assertions
assert_empty? list

# Included Object assertions
assert_includes list, 'xyz'

# Exceptions Assertions
assert_raises NoExperienceError do
  employee.hire
end

# Type Assertions
assert_instance_of Numeric, value

# Kind Assertion
assert_kind_of Numeric, value

# Same Object Assertions
assert_same list, list.process

# Refutations
refute_includes list, 'xyz'



