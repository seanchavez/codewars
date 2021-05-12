# array helpers
class Array
  def square
    self.map {|n| n ** 2}
  end

  def cube 
    self.map {|n| n ** 3}
  end

  def average
    self.reduce(:+) / self.size
  end

  def sum
    self.reduce(:+)
  end

  def even
    self.select {|n| n.even?}
  end
  
  def odd
    self.select {|n| n.odd?}
  end
end

numbers = [1, 2, 3, 4, 5]

p numbers.square()  # must return [1, 4, 9, 16, 25]
p numbers.cube()    # must return [1, 8, 27, 64, 125]
p numbers.average() # must return 3
p numbers.sum()     # must return 15
p numbers.even()    # must return [2, 4]
p numbers.odd()     # must return [1, 3, 5]
