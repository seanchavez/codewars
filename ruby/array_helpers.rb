# array helpers
class Array
  def square
    self.map {|n| n ** 2}
  end

  def cube 
    self.map {|n| n ** 3}
  end

  def average
    self.sum / 2
  end

  def sum
    self.sum
  end
end

numbers = [1, 2, 3, 4, 5]

p numbers.square()  # must return [1, 4, 9, 16, 25]
p numbers.cube()    # must return [1, 8, 27, 64, 125]
p numbers.average() # must return 3
p numbers.sum()     # must return 15
# numbers.even()    # must return [2, 4]
# numbers.odd()     # must return [1, 3, 5]
