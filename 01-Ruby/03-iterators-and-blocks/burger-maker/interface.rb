require_relative 'burger'

puts "💬 I'd like a burger with a bigger portion of fish, plus mayo and lettuce please."
# transform the string to UPPER CASE
p bigger_burger = burger('fish', 'mayo', 'lettuce', &:upcase)

puts "💬 I'd like a juicy steak with barbeque sauce and cheddar please."
# replace any vowel in the string with '~'
p juicy_burger = burger('steak', 'barbeque', 'cheddar') { |patty| patty.gsub(/[aeiou]/, '~')}

puts "💬 I'd like a spicy chicken with ketchup and cheddar please."
# add '*' before and after the string
p spicy_burger = burger('chicken', 'ketchup', 'cheddar') { |patty| "*#{patty}*"}
