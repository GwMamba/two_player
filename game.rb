class Game
  attr_reader :player1, :player2, :current_player
  
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
  end

  def next_turn
    question = Question.new
    player_answer = question.ask_question

    if question.correct_answer?(player_answer)
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.lives -= 1
    end

    puts "P1: #{player1.lives.zero? ? player2 : player1}"
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
  end

  private

  def switch_players
    @current_player = (@current_player == player1) ? player2 : player1
  end
end