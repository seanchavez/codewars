def encode(str)
  encoding = {'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5'}
  str.split('').map do |char| 
    encoding.include?(char) ? encoding[char] : char
  end.join
end

def decode(str)
  encoding = {'a' => '1', 'e' => '2', 'i' => '3', 'o' => '4', 'u' => '5'}
  str.split('').map do |char|
    encoding.has_value?(char) ? encoding.key(char) : char
  end.join
end

p encode("hello")    # "h2ll4"
p decode("h3 th2r2") # "hi there"