def remove_surrounding_whitespaces(string)
  # return the string minus leading and trailing whitespaces
  string.strip
end

def contains?(string, word)
  # return true if string contains word, false if not
  string.include?(word)
end

def replace(string, old_letter, new_letter)
  # return the string with old letters replaced by new letters
  string.gsub(old_letter, new_letter)
end

def float_divide(dividend, divisor)
  # return quotient of a dividend by a divisor via floating division
  dividend.to_f / divisor
end

def divisible_by_two?(integer)
  # return true if integer is divisible by 2
  integer.even?
end

def random_subset(array, sample_size)
  # return a random subset of array with size equal to sample_size
  array.sample(sample_size)
end

def randomize(array)
  # return a randomized copy of the array
  array.shuffle
end

def ascending_order(array)
  # return a copy of array with elements in ascending order
  array.sort
end
