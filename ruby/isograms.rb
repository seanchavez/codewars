def is_isogram(string)
  seen = {}
  string.downcase.each_char do |char|
    return false if seen[char]
    seen[char] = true
  end
  true
end

p is_isogram("Dermatoglyphics" ) == true
p is_isogram("aba" ) == false
p is_isogram("moOse" ) == false # -- ignore letter case
