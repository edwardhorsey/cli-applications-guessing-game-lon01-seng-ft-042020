# Code your solution here!

def generate_rand_number
num = rand(6)+1
num
end

def user_prompt
puts "Guess a number between 1 and 6"
end

def user_input
gets.chomp
end

def check_result(computer_num, user_num)
if user_num == computer_num
  return true
else
  return false
end
end

def game_result_message(result, computer_num)
if result = true
  puts "You guessed the correct number!"
elsif result = false
  puts "Sorry! The computer guessed #{computer_num}."
end
end

def exit_seq
  puts "Goodbye!"
end

def run_guessing_game
computer = generate_rand_number
user_prompt
user_guess = user_input
if user_guess == "exit"
  return exit_seq
end
the_result = check_result(computer, user_guess)
puts the_result
return game_result_message(the_result, computer)
end
