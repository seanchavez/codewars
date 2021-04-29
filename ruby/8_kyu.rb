# grasshopper-summation
def summation(num)
  (1..num).sum
end

# two to one
def longest(a1, a2)
  a1.concat(a2).chars.uniq.sort.join
end