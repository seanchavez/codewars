# rot 13
def rot13(string)
  ciphered_chars = string.split('').map do |char|
    is_cap = false
    if char >= 'A' && char <= 'Z'
      char = char.downcase
      is_cap = true
    end
    if char >= 'a' && char <= 'z'
      new_ord = (char.ord + 13)
      ciphered_char = new_ord.chr > 'z' ? (new_ord - 26).chr : new_ord.chr
      is_cap ? ciphered_char.upcase : ciphered_char
    else
      char
    end
  end
  ciphered_chars.join
end