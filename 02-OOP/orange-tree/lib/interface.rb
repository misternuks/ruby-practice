require_relative 'orange_tree'
require_relative 'pluralizer'

orange_tree = OrangeTree.new

is_dead = orange_tree.dead?

until is_dead
  orange_tree.one_year_passes!
  print "One year passes"
  sleep(0.1)
  print "."
  sleep(0.05)
  print "."
  sleep(0.05)
  puts "."
  sleep(0.05)
  is_dead = orange_tree.dead?
  if is_dead
    puts "Your orange tree is dead."
  else
    puts "Your orange tree is #{pluralize(orange_tree.age, 'year')} old, #{pluralize(orange_tree.height, 'meter')} tall, and bears #{pluralize(orange_tree.fruits, 'orange')}."
  end
  sleep(0.1)
  puts
end
