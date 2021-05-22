def encode(s)
  s.tr('aeiou', '12345')
end

def decode(s)
  s.tr('12345', 'aeiou')
end

p encode("hello")    # "h2ll4"
p decode("h3 th2r2") # "hi there"