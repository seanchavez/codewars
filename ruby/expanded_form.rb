def expanded_form(num)
  digits = num.to_s.chars
  pow = digits.length - 1
  expanded = ""
  digits.each do |char|
    if char == "0"
      pow -= 1
      next
    end
    expanded += "#{char.to_i * 10 ** pow} + "
    pow -= 1
  end
  expanded.delete_suffix(" + ")
end

p expanded_form(12); # Should return '10 + 2'
p expanded_form(42); # Should return '40 + 2'
p expanded_form(70304); # Should return '70000 + 300 + 4'
p expanded_form(90000)
