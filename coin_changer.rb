def coinify(change)
  hash = Hash.new
  quarter = 0; dime = 0; nickel = 0; penny = 0;
  while change > 0
    if change / 25 >= 1
      hash[change / 25 > 1 ? :Quarters : :Quarter] = (change / 25).to_i
      change -= (25 * hash[change / 25 > 1 ? :Quarters : :Quarter]).to_i
    elsif change / 10 >= 1
      hash[change / 10 > 1 ? :Dimes : :Dime] = (change / 10).to_i
      change -= (10 * hash[change / 10 > 1 ? :Dimes : :Dime]).to_i
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

def coinify_loop(change)
  hash = Hash.new
  coins = [[:Quarter, 25], [:Dime, 10], [:Nickel, 5], [:Penny, 1]]
  coins.each do |value|
    if (change / value[1]) >= 1
      hash[value[0]] = change / value[1].to_i
      change -= value[1] * hash[value[0]]
    end
  end
  return hash
end
