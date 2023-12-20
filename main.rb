require_relative 'player'
require_relative 'question'
require_relative 'game'

#get player names from the user
puts "Enter Player 1's name:"
player1_name = gets.chomp

puts "Enter Player 2's name:"
player2_name = gets.chomp

# Initialize the game
math_game = Game.new(player1_name, player2_name)

# Game Loop
until math_game.player1.lives.zero? || math_game.player2.lives.zero?
  math_game.next_turn
end

# Announce the winner
math_game.announce_winner