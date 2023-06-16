require_relative "coach"
# create the program for input from user and output from "coach"
user_message = nil
until user_message == "I am going to work right now!" || user_message == "I AM GOING TO WORK RIGHT NOW!"
  print "Type a message to your coach:"
  user_message = gets.chomp.to_s
  puts coach_answer_enhanced(user_message)
end
