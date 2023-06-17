def sum_with_for(min, max)
  sum = 0
  if min > max
    -1
  else
    for x in min..max
      sum += x
    end
    sum
  end
end

def sum_with_while(min, max)
  sum = 0
  if min > max
    -1
  else
    while min <= max
      sum += min
      min += 1
    end
    sum
  end
end
