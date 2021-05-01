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