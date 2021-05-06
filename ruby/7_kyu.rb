# abbreviate a two word name
def abbrev_name(name)
  first_last = name.split(" ")
  first_last.first[0].upcase + "." + first_last.last[0].upcase
end

# binary edition
def add_binary(a,b)
  (a + b).to_s(2)
end

# remove the minimum
def remove_smallest(numbers)
  new_list = []
  numbers.each_with_index {|n, i| new_list << n unless i == numbers.index(numbers.min)}
  new_list
end

# equal sides of an array
def find_even_index(arr)
  arr.each_index do |i| 
    return i if arr[0,i].sum == arr[i + 1, arr.length - i].sum
  end
  -1
end

# unique in order
def unique_in_order(iterable)
  uniques = []
  iterable = iterable.split('') if iterable.instance_of?(String)
  iterable.each {|el| uniques << el unless uniques.last == el}
  uniques
end

p unique_in_order('AAAABBBCCDAABBB') #== ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD')         #== ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1,2,2,3,3])       #== [1,2,3]

def expanded_form(num)
  digits = num.to_s.chars
  pow = digits.length - 1
  expanded = ""
  digits.each do |char|
    if char == "0"
      pow -= 1
      next
    end
    expanded += "#{char.to_i * 10 ** pow} + "
    pow -= 1
  end
  expanded.delete_suffix(" + ")
end

p expanded_form(12); # Should return '10 + 2'
p expanded_form(42); # Should return '40 + 2'
p expanded_form(70304); # Should return '70000 + 300 + 4'
p expanded_form(90000)

def iq_test(numbers)
  digits = numbers.split
  evens = digits.select {|n| n.to_i.even?}
  evens.size == 1 ? digits.index(evens.first) + 1 : digits.index {|el| el.to_i.odd?} + 1
end

p iq_test("2 4 7 8 10") #=> 3 # Third number is odd, while the rest of the numbers are even

p iq_test("1 2 1 1") #=> 2 # Second number is even, while the rest of the numbers are odd

def dig_pow(n, p)
  sum = n.digits.reverse.map.with_index {|d, i| d ** (p + i)}.sum 
  sum % n == 0 ? (sum / n) : -1
end

p dig_pow(89, 1) # should return 1 since 8¹ + 9² = 89 = 89 * 1
p dig_pow(92, 1) # should return -1 since there is no k such as 9¹ + 2² equals 92 * k
p dig_pow(695, 2) # should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
p dig_pow(46288, 3) # should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

def tickets(bills)
  cash_drawer = {100 => 0, 50 => 0, 25 => 0} 
  bills.each do |bill|
    if bill > 25
      if bill == 50 
        cash_drawer[25] < 1 ? (return "NO") : (cash_drawer[25] -= 1)
      end
      if bill == 100 
        if cash_drawer[50] == 0
          cash_drawer[25] < 3 ? (return "NO") : (cash_drawer[25] -= 3)
        else
          cash_drawer[25] < 1 ? (return "NO") : (cash_drawer[25] -= 1 and cash_drawer[50] -= 1)
        end
      end
    end
    cash_drawer[bill] += 1
  end
  "YES"
end

p tickets([25, 25, 50]) # => YES 
p tickets([25, 100]) # => NO. Vasya will not have enough money to give change to 100 dollars
p tickets([25, 25, 50, 50, 100]) # => NO. Vasya will not have the right bills to give 75 dollars of change (you can't make two bills of 25 from one of 50)
p tickets([25, 25, 25, 25, 25, 25, 25, 50, 50, 50, 100, 100, 100, 100])

