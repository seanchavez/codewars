# calculating with functions
def plus(n)
  ["+", n]
end

def minus(n)
  ["-", n]
end

def times(n)
  ["*", n]
end

def divided_by(n)
  ["/", n]
end

def calculate(m, op, n)
  case op
  when "+" then m + n
  when "-" then m - n
  when "*" then m * n
  when "/" then m / n
  end
end

def result(m, args)
  args.empty? ? m : calculate(m, args[0], args[1])
end
  
def zero(args=[])
  result(0, args)
end

def one(args=[])
  result(1, args)
end

def two(args=[])
  result(2, args)
end

def three(args=[])
  result(3, args)
end

def four(args=[])
  result(4, args)
end

def five(args=[])
  result(5, args)
end

def six(args=[])
  result(6, args)
end

def seven(args=[])
  result(7, args)
end

def eight(args=[])
  result(8, args)
end

def nine(args=[])
  result(9, args)
end