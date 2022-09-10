require './players'
require './questions'

class Game

  player1 = Player.new('Player1')
  player2 = Player.new('Player2')
  question = Questions.new()

  play = true;
  player_turn = player1
  while play do 
  puts"|-------------NEW-TURN-------------|"
  puts "#{player_turn.place_name}:"
  puts ("#{question.test_question}")
  print ">"
  answer = gets.chomp.to_i

  if question.checkAnswer(answer)
    puts "#{player_turn.place_name}: YES! You are correct!"
  else 
    puts "#{player_turn.place_name}: NO! wrong! Go study more!"
    player_turn.health_loss
  end

  if player_turn.health == 0
    break
  end
  puts "P1: #{player1.health}/3 Vs. P2: #{player2.health}/3"

  if player_turn == player1
    player_turn = player2
  elsif 
    player_turn == player2
    player_turn = player1
  end

  end

  if player1.health == 0
    puts"|-------------GAME-OVER-------------|"
    puts "#{player2.place_name} wins! With a score of #{player2.health}/3"
  else 
    puts"|-------------GAME-OVER-------------|"
    puts "#{player1.place_name} wins! With a score of #{player1.health}/3"
  end
end