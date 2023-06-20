require_relative 'blackjack'

def game_status_message(player_score, house_score)
  puts "You have #{player_score}. The dealer has #{house_score}."
end

def end_game_message(player_score, house_score)
  if player_score > 21 || player_score < house_score
    player_score > 21 ? 'You lose (bust).' : 'You lose to the house.'
  elsif player_score == 21 || player_score > house_score
    player_score == 21 ? 'Blackjack! You win!' : 'You beat the dealer!'
  else
    "It's a push (you tied with the house)."
  end
end
