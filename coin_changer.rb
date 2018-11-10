def coinify(change)
  hash = Hash.new
  quarter = 0; dime = 0; nickel = 0; penny = 0;
  if change.class == Integer then while change > 0
      if change / 25 >= 1
        hash[change / 25 > 1 ? :Quarters : :Quarter] = (change / 25)
        change -= (25 * hash[change / 25 > 1 ? :Quarters : :Quarter])
      elsif change / 10 >= 1
        hash[change / 10 > 1 ? :Dimes : :Dime] = (change / 10)
        change -= (10 * hash[change / 10 > 1 ? :Dimes : :Dime])
      elsif change / 5 >= 1
        hash[:Nickel] = nickel += 1
        change -= 5
      elsif change / 1 >= 1
        hash[change / 1 > 1 ? :Pennies : :Penny] = (change / 1)
        change -= (1 * hash[change / 1 > 1 ? :Pennies : :Penny])
      end
        is_hash_full = true
    end
  end
  is_hash_full ?  hash : "Please use correct input"
end

def coinify_loop(change)
  hash = Hash.new
  coins = [[:Quarter, 25], [:Dime, 10], [:Nickel, 5], [:Penny, 1]]
  coins.each do |value|
    if (change / value[1]) >= 1
      hash[value[0]] = change / value[1]
      change -= value[1] * hash[value[0]]
    end
  end
  return hash
end
