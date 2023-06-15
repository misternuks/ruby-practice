def colorful?(number)
  if number.instance_of?(Integer)
    x = number.to_s.chars.map { |i| i.to_i }
    case number.to_s.length
    when 3
      y = [x[0], x[1], x[2], (x[0] * x[1]), (x[1] * x[2]), (x[0] * x[1] * x[2])]
    when 2
      y = [x[0], x[1], (x[0] * x[1])]
    when 1
      y = x
    end
    y.uniq.length == y.length
  else
    false
  end
end
