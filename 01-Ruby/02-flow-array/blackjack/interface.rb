require_relative 'dealer'
puts
puts '- - - - - - - - - - - - - -'
puts '*~A 2 3 4 5 6 7 8 9 10 J Q K~*'
puts '- - - - - - - - - - - - - -'
puts 'Welcome to Simplified Blackjack!'
puts
replay = 'y'

until replay != 'y'

  player_score = player_card
  house_score = house_card

  puts game_status_message(player_score, house_score)
  print 'Do you want a card? Type y or n. > '
  response = gets.chomp.to_s.downcase.chr

  until player_score > 21 || response != 'y'
    player_score += player_card
    puts game_status_message(player_score, house_score)
    print 'Do you want a card? Type y or n. > '
    response = gets.chomp.to_s.downcase.chr
  end

  puts game_status_message(player_score, house_score)
  puts end_game_message(player_score, house_score)
  puts
  puts 'Play again? Type y or n. >'
  replay = gets.chomp.to_s.downcase.chr
end
