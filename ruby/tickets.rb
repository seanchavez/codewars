def tickets(bills)
  cash_drawer = {100 => 0, 50 => 0, 25 => 0} 
  bills.each do |bill|
    if bill > 25
      if bill == 50 
        cash_drawer[25] < 1 ? (return "NO") : (cash_drawer[25] -= 1)
      end
      if bill == 100 
        if cash_drawer[50] == 0
          cash_drawer[25] < 3 ? (return "NO") : (cash_drawer[25] -= 3)
        else
          cash_drawer[25] < 1 ? (return "NO") : (cash_drawer[25] -= 1 and cash_drawer[50] -= 1)
        end
      end
    end
    cash_drawer[bill] += 1
  end
  "YES"
end

p tickets([25, 25, 50]) # => YES 
p tickets([25, 100]) # => NO. Vasya will not have enough money to give change to 100 dollars
p tickets([25, 25, 50, 50, 100]) # => NO. Vasya will not have the right bills to give 75 dollars of change (you can't make two bills of 25 from one of 50)
p tickets([25, 25, 25, 25, 25, 25, 25, 50, 50, 50, 100, 100, 100, 100])