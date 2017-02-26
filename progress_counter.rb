class ProgressCounter
  def initialize(counter_no)
    @counter_no = counter_no
    @total_count = 1
  end

  attr_accessor :counter_no, :total_count

end

class Questions
  def initialize(questions)
    @questions = questions
  end

  attr_accessor :questions

  def ask_questions(progress_bar)
    @answers = []

    @questions.each do |question|
    system("clear")
    puts "#{progress_bar.counter_no}: #{progress_bar.total_count} / #{@questions.length}"
    puts question
    answer = gets.chomp
    @answers << answer
    puts @answers.inspect
    progress_bar.total_count = progress_bar.total_count + 1
    end

    puts "Thanks for answering my questions. You answered with:"
    @answers.each do |answer|
      puts answer
    end
  end
end

question_list = [
"How are you?",
"Do you like Pokemon?",
"What do you think about the topic of dogs?",
"Would you be able to become a doctor?",
"Do you like Tesla?",
]

fun_questions = Questions.new(question_list)
progress_bar = ProgressCounter.new("Progress")

fun_questions.ask_questions(progress_bar)
