class Player
  attr_reader :name
  attr_accessor :game, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def answer_question(question)
    question.current_player = self
    player_answer = question.ask_question

    handle_answer_result(question.correct_answer?(player_answer))
    puts "P1: #{game.player1.current_score} vs P2: #{game.player2.current_score}"
  end

  def handle_answer_result(correct)
    if correct
      puts "#{name}: YES! You are correct."
    else
      puts "#{name}: Seriously? No!"
      @lives -= 1
    end
  end

  def current_score
    "#{name}: #{@lives}/3"
  end
end