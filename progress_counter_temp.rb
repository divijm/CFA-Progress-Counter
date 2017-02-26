require "terminal-table"

class Questioner
  def initialize(questions)
    @questions = questions
  end

  attr_accessor :questions

  def ask(progress_bar)
    @answers = []

    @questions.each do |question|
      system("clear")
      puts "#{progress_bar.title}: #{progress_bar.current_step} / #{@questions.length}"
      puts question
      answer = gets.chomp.to_i
      @answers << answer
      progress_bar.current_step = progress_bar.current_step + 1
      system("clear")
    end

    fah0 = (@answers[0]*9) / (5 + 32)
    fah1 = (@answers[1]*9) / (5 + 32)
    fah2 = (@answers[2]*9) / (5 + 32)
    fah3 = (@answers[3]*9) / (5 + 32)
    fah4 = (@answers[4]*9) / (5 + 32)

    puts @answers.inspect

    rows = []
    rows << ['Monday', @answers[0], fah0]
    rows << ['Tuesday', @answers[1], fah1]
    rows << ['Wednesday', @answers[2], fah2]
    rows << ['Thursday', @answers[3], fah3]
    rows << ['Friday', @answers[4], fah4]
    table = Terminal::Table.new :title => "Weather outlook!", :headings => ['Day', 'Temp (C)', 'Temp (F)'], :rows => rows
    puts table
  end
end

class ProgressBar
  def initialize(title)
    @current_step = 1
    @title = title
  end

  attr_accessor :current_step, :title
end

question_list = [
  "What's the temp on Mon?",
  "What's the temp on Tue?",
  "What's the temp on Wed?",
  "What's the temp on Thurs?",
  "What's the temp on Fri?"
]

my_questioner = Questioner.new(question_list)
progress_bar = ProgressBar.new("Question Progress")

my_questioner.ask(progress_bar)
