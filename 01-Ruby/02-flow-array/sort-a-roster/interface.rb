require_relative "roster_sort"

students = []

while students.empty?
  print "Type a student's name, then push enter > "
  reply = gets.chomp.to_s.capitalize
  students.push(reply) unless reply == ""
end

until reply == ""
  print "Type another student's name, or push enter to finish > "
  reply = gets.chomp.to_s.capitalize
  students.push(reply) unless reply == ""
end
puts
10.times do
  print "-"
  sleep(0.01)
end
puts
puts

puts "Your class has #{students.length} #{students.length != 1 ? "students." : "student." }"

if students.length > 1
  sorted_roster = roster_sort(students)
  final_student = sorted_roster.pop
  puts "Here is an alphabetized student roster: #{sorted_roster.join ', '} and #{final_student}."
else
  puts "Your student's name is #{students[0]}."
end
puts
puts "----------"
puts
