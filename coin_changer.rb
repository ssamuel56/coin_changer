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
    end
  end
  # p hash
  return hash
end
