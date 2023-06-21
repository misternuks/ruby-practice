def sum_odd_indexes(array)
  # sum the elements at odd indexes via .each_with_index
  array.each_with_index.inject(0) { |sum, (v, i)| i.odd? sum + v : sum }
end

def even_numbers(array)
  # return the even numbers from an array of integers using .select
  array.select { |v| v.even? }
end

def short_words(array, max_length)
  # using .reject, return the array minus words exceeding character max_length
  array.reject { |v| v.length > max_length }
end

def first_under(array, limit)
  # using .find, return the first number from the array that is less than limit
  array.find { |v| v < limit }
end

def add_bang(array)
  # using .map, return a new array with each string followed by "!"
  array.map { |v| "#{v}!"}
end

def concatenate(array)
  # use reduce to concatenate all strings in the array
  array.reduce(:+)
end

def sorted_pairs(array)
  # using each_slice, reorganize an array into slices of 2 elements sorted A-Z
  array.each_slice(2).map(&:sort)
end
