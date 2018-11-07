def coinify(change)
  hash = Hash.new
  while change > 0
    if change % 25 >= 1
      hash.merge(:Quarter => quarter += 1)
    end
  end
  return hash
end
