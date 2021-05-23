def presses(phrase)
  phrase.chars.reduce(0) do |presses, c|
    char = c.downcase
    presses + 1 + case char
      when '2', 'a'..'c' then %w(a b c 2).index(char)
      when '3', 'd'..'f' then %w(d e f 3).index(char)
      when '4', 'g'..'i' then %w(g h i 4).index(char)
      when '5', 'j'..'l' then %w(j k l 5).index(char)
      when '6', 'm'..'o' then %w(m n o 6).index(char)
      when '7', 'p'..'s' then %w(p q r s 7).index(char)
      when '8', 't'..'v' then %w(t u v 8).index(char)
      when '9', 'w'..'z' then %w(w x y z 9).index(char)
      when '0' then 1
      else 0
    end
  end
end

p total_keypresses('shit h8')
p total_keypresses("WHERE DO U WANT 2 MEET L8R")