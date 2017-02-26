#####################################################
require "terminal-table"
require "paint"
#####################################################
class Question
  def initialize(questions)
    @questions = questions
    @days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  end

attr_accessor :questions, :days

def insert_table(days, temp_c, temp_f)
  @days = days.join("\n")
  rows = []
  rows << [days, temp_c, temp_f]
  table = Terminal::Table.new title: "Temperature", headings: %w(Days Celsius Fahrenheit), rows: rows
  puts table
end

 def ask(hi_progress_bar)
    @answers = []
    temp_c = []
    temp_f = []

   @questions.each do |question|
     system("clear")
   puts "#{hi_progress_bar.title}: (#{hi_progress_bar.current_step}/#{@questions.length})"
   puts question
   answer = gets.chomp.to_i
   @answers << answer

   hi_progress_bar.current_step += 1
                  end

  @answers.each do|answer|
    if answer <= 28
     temp_c << Paint[answer, :blue]
     temp_f << (Paint[answer * 9 / 5 + 32, :blue])
    elsif answer >=28
     temp_c << Paint[answer, :red]
     temp_f << (Paint[answer * 9 / 5 +32, :red])
    end
               end
    @temp_c = temp_c.join("\n")
    @temp_f = temp_f.join("\n")
    insert_table(days, temp_c, temp_f)
  end
end
#####################################################
class ProgressBar
  def initialize(title)
    @current_step = 1
    @title = title
  end

  attr_accessor :current_step, :title
end
#####################################################
days = ["Monday", "Tuesday", "Wednesday", "Tursday", "Friday", "Saturday", "Sunday"]
questions = []
days.each do |day|
  questions << "Hi, What was the temperature on #{day}?"
          end
#####################################################
hi_question = Question.new(questions)
hi_progress_bar = ProgressBar.new("Question Progress")
hi_question.ask(hi_progress_bar)
#####################################################
