def coinify(change)
  hash = Hash.new
  quarter = 0; dime = 0; nickel = 0; penny = 0;
  while change > 0
    if change / 25 >= 1
      hash[:Quarter] = quarter += 1
      change -= 25
    elsif change / 10 >= 1
      hash[:Dime] = dime += 1
      change -= 10
    elsif change / 5 >= 1
      hash[:Nickel] = nickel += 1
      change -= 5
    end
  end
  # p hash
  return hash
end
