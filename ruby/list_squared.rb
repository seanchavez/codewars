def list_squared(m, n)
  list = []
  (m..n).each do |i|
    sum_of_squares = get_divisors(i).map {|x| x ** 2}.sum
    list << [i, sum_of_squares] if Math.sqrt(sum_of_squares) % 1 == 0
  end
  list
end

def get_divisors(num)
  divisors = []
  i = 1
  loop do
    if num % i == 0
      num / i == i ? divisors.push(i) : divisors.push(i, num / i)
    end
    i += 1
    break if i > Math.sqrt(num)
  end
  divisors
end

p list_squared(1, 250) # --> [[1, 1], [42, 2500], [246, 84100]]
p list_squared(42, 250) # --> [[42, 2500], [246, 84100]]
p get_divisors(100)