# abbreviate a two word name
def abbrev_name(name)
  first_last = name.split(" ")
  first_last.first[0].upcase + "." + first_last.last[0].upcase
end

# binary addition
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

# sum of two lowest positive integers
def sum_two_smallest_numbers(numbers)
  numbers.min(2).sum
end

def dig_pow(n, p)
  sum = n.digits.reverse.map.with_index {|d, i| d ** (p + i)}.sum 
  sum % n == 0 ? (sum / n) : -1
end

p dig_pow(89, 1) # should return 1 since 8¹ + 9² = 89 = 89 * 1
p dig_pow(92, 1) # should return -1 since there is no k such as 9¹ + 2² equals 92 * k
p dig_pow(695, 2) # should return 2 since 6² + 9³ + 5⁴= 1390 = 695 * 2
p dig_pow(46288, 3) # should return 51 since 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

def sum_dig_pow(a, b)
  (a..b).filter do |n|
    n.digits.reverse.map.with_index {|d, i| d ** (i + 1)}.sum == n
  end
end

p sum_dig_pow(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9]

p sum_dig_pow(1, 100) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]

p sum_dig_pow(90, 100) == []

def domain_name(url)
  i = index('.'), j = rindex('.')
  url[i...j]
end


def array_diff(list_a, list_b)
  list_a.select {|el| !list_b.include?(el)}
end

p array_diff([1,2],[1]) == [2]

def up_array(arr)
  return nil if arr.empty? || arr.any? {|el| el < 0 || el > 9}
  (arr.join.to_i + 1).digits.reverse
end

def delete_nth(arr, n)
  new_arr = []
  arr.each {|el| new_arr << el unless new_arr.count(el) >= n}
  new_arr
end

p delete_nth([1,1,1,1],2) # return [1,1]
  
p delete_nth([20,37,20,21],1) # return [20,37,21]

# detect pangram
def pangram?(string)
  str = string.downcase
  ('a'..'z').all? {|char| str.include?(char)}
end

def reverse_alternate(string)
  string.split.map.with_index {|word, i| i.odd? ? word.reverse : word}.join(' ')
end

p reverse_alternate("Did it work?")
p reverse_alternate("I really hope it works this time...") # "I yllaer hope ti works siht time..."
p reverse_alternate("Reverse this string, please!") # "Reverse siht string, !esaelp"
p reverse_alternate("Have a beer") # "Have a beer"
p reverse_alternate("") # ""

def url?(str)
  return true if str =~ /\Ahttps?:\/\/\S+\z/
  false
end

p url?('http://launchschool.com')   # -> true
p url?('https://example.com')       # -> true
p url?('https://example.com hello') # -> false
p url?('   https://example.com')    # -> false

def fields(str)
  str.split(/[ \t,]+/)
end

p fields("Pete,201,Student")
# -> ['Pete', '201', 'Student']
p fields("Pete \t 201    ,  TA")
# -> ['Pete', '201', 'TA']
p fields("Pete \t 201")
# -> ['Pete', '201']
p fields("Pete \n 201")
# -> ['Pete', '\n', '201']

def mystery_math(str)
  str.sub(/[+\-*\/]/, '?')
end

p mystery_math('4 + 3 - 5 = 2')
# -> '4 ? 3 - 5 = 2'
p mystery_math('(4 * 3 + 2) / 7 - 1 = 1')
# -> '(4 ? 3 + 2) / 7 - 1 = 1'

def mysterious_math(str)
  str.gsub(/[+\-*\/]/, '?')
end

p mysterious_math('4 + 3 - 5 = 2')           # -> '4 ? 3 ? 5 = 2'
p mysterious_math('(4 * 3 + 2) / 7 - 1 = 1') # -> '(4 ? 3 ? 2) ? 7 ? 1 = 1'

def danish(str)
  str.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
end

p danish('An apple a day keeps the doctor away')
# -> 'An danish a day keeps the doctor away'
p danish('My favorite is blueberry pie')
# -> 'My favorite is danish pie'
p danish('The cherry of my eye')
# -> 'The danish of my eye'
p danish('apple. cherry. blueberry.')
# -> 'danish. cherry. blueberry.'
p danish('I love pineapple')
# -> 'I love pineapple'

def format_date(str)
  str.sub(/(\d\d\d\d)-(\d\d)-(\d\d)/, '\3.\2.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)

def format_date(str)
  str.sub(/(\d\d\d\d)(-|\/)(\d\d)\2(\d\d)/, '\4.\3.\1')
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)

def dir_reduce(dirs)
  opposites = {
    north: 'south',
    south: 'north',
    east: 'west',
    west: 'east'
  }
  reduced_dirs = []
  dirs.each_with_index do |dir, i|
    reduced_dirs << dir if dirs[(i + 1)..-1].include?(opposites[dir.downcase.to_sym])
  end
  reduced_dirs
end

p dir_reduce(["NORTH", "SOUTH", "EAST", "WEST"])
p dir_reduce(["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"])