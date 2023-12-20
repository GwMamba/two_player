class Question
  attr_accessor :current_player
  attr_reader :num1, :num2, :current_player

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @current_player = current_player
  end

  def ask_question
    puts "#{current_player.name}: What does #{@num1} plus #{@num2} equal?"
    gets.chomp.to_i
  end

  def correct_answer?(answer)
    answer == @num1 + @num2
  end
end