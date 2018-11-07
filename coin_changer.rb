def coinify(change)
  hash = Hash.new
  quarter = 0; dime = 0; nickel = 0; penny = 0;
  while change > 0
    if change / 25 >= 1
      hash[:Quarter] = (change / 25).to_i
      change -= (25 * hash[:Quarter]).to_i
    elsif change / 10 >= 1
      hash[:Dime] = dime += 1
      change -= 10
    elsif change / 5 >= 1
      hash[:Nickel] = nickel += 1
      change -= 5
    elsif change / 1 >= 1
      hash[:Penny] = penny += 1
      change -= 1
    end
  end
  return hash
end
