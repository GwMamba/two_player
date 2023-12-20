class Game
  attr_reader :player1, :player2, :current_player
  
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @player1.game = self  # Set the game attribute for player1
    @player2.game = self  # Set the game attribute for player2
    @current_player = @player1
  end

  def next_turn
    question = Question.new
    player_answer = current_player.answer_question(question)

    switch_players
    
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    
    if game_over?
      puts "#{winner.name} wins with a score of #{winner.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good Bye!"
      exit
    end
  end

  def switch_players
    @current_player = (@current_player == player1) ? player2 : player1
  end

  def game_over?
    player1.lives.zero? || player2.lives.zero?
  end

  def winner
    player1.lives.zero? ? player2 : player1
  end
end