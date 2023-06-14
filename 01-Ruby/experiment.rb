def remove_surrounding_whitespaces(string)
  # return the string minus leading and trailing whitespaces
  string.strip
end

p remove_surrounding_whitespaces("   yo what up   ")
# return true if string contains word, false if not
def contains?(string, word)
  string.include?(word)
end

p contains?("yo what up", "yo")
p contains?("yo what up", "Steve")

def replace(string, old_letter, new_letter)
  # return the string with old letters replaced by new letters
  string.gsub(old_letter, new_letter)
end

p replace("I like to eat apples and bananas", "a", "i")
