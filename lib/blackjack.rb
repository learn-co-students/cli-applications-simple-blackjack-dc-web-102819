require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h" 
    current_total += deal_card
  elsif input == "s"
    return current_total
  else
    # hit?(current_total)
    # input != "h" && input != "s"
    invalid_command
    prompt_user
    get_user_input
    # return current_total
    # binding.pry
  end
end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# def runner
#   # code runner here
#   welcome
#   sum = initial_round
#   until sum > 21 do 
#     whatever_sum = hit?(sum)
#     display_card_total(whatever_sum)
#   end
#   end_game(whatever_sum)
# end

def runner
  # code runner here
  welcome
  sum = initial_round
  until sum > 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end