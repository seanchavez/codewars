def iq_test(numbers)
  digits = numbers.split
  evens = digits.select {|n| n.to_i.even?}
  evens.size == 1 ? digits.index(evens.first) + 1 : digits.index {|el| el.to_i.odd?} + 1
end

p iq_test("2 4 7 8 10") #=> 3 # Third number is odd, while the rest of the numbers are even

p iq_test("1 2 1 1") #=> 2 # Second number is even, while the rest of the numbers are odd
