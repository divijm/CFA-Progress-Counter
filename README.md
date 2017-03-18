# CFA Progress Counter

## Project Name

Progress Counter and Progress Counter Temperature

## Description

Create an application that counts the progress of how many questions have been asked. E.g If the user has answered 4 questions out of a total of 10 questions, the application would display 4/10 to help identify the user of their progress.

An extension to the application, was for it to be able to collect weather inputs from the user and then put that data together in a table which shows the temperatures in both Celsius and Fahrenheit.

## Installation Instructions

The applications are written in Ruby and must have it installed (Ruby 2.4 or higher).

1. Clone the repo.

2. Caffeine Quest uses ```bundler``` to install dependencies.

```
gem install bundler
bundler install
```

The ```bundler install``` command must be called in the root directory of the repo.

3. To run the file in terminal:

Progress Counter: ```$ ruby progress_counter.rb```

Progress Counter Temperature - Version 1: ```$ ruby progress_counter_temp.rb```

Progress Counter Temperature - Version 2: ```$ ruby progress_counter_temp2.rb```

Progress Counter Temperature - Version 3: ```$ ruby progress_counter_temp3.rb```

## File History

### 1st attempt: progress_counter.rb

Features:
  - 2 classes - Questions and Progress Counter
  - multiple methods
  - loops
  - if statements
  - getting user input for the weather on different days
  - progress counter counting

### 2nd attempt: progress_counter_temp.rb

Extension of the Progress Counter application

Additions:

- alter the questions to refer to the temperature of each day of the week
- record the answers from each question asked
- present the answers in a table using the terminal-table gem (https://github.com/tj/terminal-table)
- color the celsius answers depending upon how hot that day was using the paint gem (https://github.com/janlelis/paint)
- convert to Fahrenheit in a third column

### 3rd attempt: progress_counter_temp2.rb

Additions:

- general refractoring

### 4th attempt: progress_counter_temp3.rb

Additions:

- general refractoring

## Authors
Divij Mehra

Mentorship and insight was sought from Trent, Jamie, Peter and other peer students.

## Contact Info
Reach out to me via GitHub or via email (divij.mehra.16@gmail.com)
