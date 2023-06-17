def sum_with_for(min, max)
  sum = min
  if max > min
    for sum in min..max
      sum += 1
    end
    sum
  else
    -1
  end
end

p sum_with_for(1, 3)
p sum_with_for(3, 1)

def sum_with_while(min, max)
end
