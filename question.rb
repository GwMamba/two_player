class Question
  attr_reader :num1 :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask_question
    puts "#{current_player.name}: What does #{@num1} plus #{@num2} equal?"
    gets.chomp.to_i
  end

  def correct_answer?(answer)
    answer == @num1 + @num2
  end
end