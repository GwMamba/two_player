class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def answer_question(answer)
    # logic to handle answering questions and updating lives
  end

  def current_score
    "#{name}: #{@lives}/3"
  end
end