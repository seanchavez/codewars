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