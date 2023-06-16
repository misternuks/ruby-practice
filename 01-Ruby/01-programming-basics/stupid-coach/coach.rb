def coach_answer(user_message)
  # return coach answer to the user's message
  if user_message == "I am going to work right now!" || user_message = "I am going to work right now!".upcase
     "Good luck!"
  elsif user_message.include?("?")
     "That's a stupid question. Get to work!"
  else
    "I don't care! Get to work!"
  end
end

def coach_answer_enhanced(user_message)
  # return a modified coach answer if the user types in upcase
  # "Good luck!" if user_message == "I am going to work right now!" || user_message == "I am going to work right now!".upcase
  if user_message == user_message.upcase
    return "I can feel your motivation! #{coach_answer(user_message)}"
  else
    return coach_answer(user_message)
  end
end
