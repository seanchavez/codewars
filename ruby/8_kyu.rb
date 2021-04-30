# grasshopper-summation
def summation(num)
  (1..num).sum
end

# two to one
def longest(a1, a2)
  a1.concat(a2).chars.uniq.sort.join
end

# sum of positive
def positive_sum(arr)
  positives = arr.select {|n| n > 0}
  positives.sum
end

# remove string spaces
def no_space(x)
  x.split(' ').join
end

# reversed strings
def solution(str)
  str.reverse
end

# find the smallest integer in the array
def find_smallest_int(arr)
  arr.min
end

# beginner series #3 sum of numbers
def find_smallest_int(arr)
  arr.min
end

# ones and zeros
def binary_array_to_number(arr)
  arr.join.to_i(2)
end 

# complementary dna
def DNA_strand(dna)
  complement_table = {
    "A" => "T",
    "C" => "G",
    "G" => "C",
    "T" => "A"
  }
  complement = ""
  dna.each_char {|char| complement += complement_table[char]}
  complement
end

# friend or foe?
def friend(friends)
  friends.select {|friend| friend.length == 4}
end