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

# def unique_in_order(iterable)
#   uniques = []
#   seq = seq.split('') if seq.instance_of?(String)
#   seq.each_with_index do |el, i|
#       p "{ el: #{el}, i: #{i} }"
#     if i == 0 && seq[i + 1] != el
#       p "{ wrong_prev: #{seq[i - 1]}, next: #{seq[i + 1]}, el: #{el}, i: #{i} }"
#       uniques.push(el)
#     elsif seq[i - 1] != el && seq[i + 1] != el
#       p "{ prev: #{seq[i - 1]}, next: #{seq[i + 1]}, el: #{el}, i: #{i} }"
#       uniques.push(el)
#     end
#     p "{ uniques: #{uniques} }"
#   end
#   uniques
# end

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
    expanded += "#{char.to_i * 10 ** pow} "
    expanded += "+ " unless pow == 0 
    pow -= 1
  end
  expanded.strip
end

p expanded_form(12); # Should return '10 + 2'
p expanded_form(42); # Should return '40 + 2'
p expanded_form(70304); # Should return '70000 + 300 + 4'
