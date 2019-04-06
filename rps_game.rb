puts 'Welcome to a game of luck:'
puts '-'*31
puts '      Rock Paper Scissor'
puts 'Your component will be The Computer!'
puts 'Willing to play?'
user_input = gets.chomp!

def computer_game(player)
  cpu_choice = ['rock', 'paper', 'scissors']
  cpu =cpu_choice.sample
  result = if player == cpu
    'Draw... Give it another go?'
    
  else
    case player
      when 'rock'
        cpu == 'scissors' ? 'win' : 'lose'
      when 'paper'
        cpu == 'rock' ? 'win' : 'lose'
      when 'scissors' 
        cpu == 'paper' ? 'win' : 'lose'
    end
  end
  puts "#{cpu}, #{result}"
end
  
    

if user_input.downcase == 'yes'
  puts 'Let\'s get it started then!'
  puts
  puts 'Give me your best shot:'
  choice = gets.chomp!
  computer_game(choice)
else 
  puts 'Really sorry to hear that! Bye!'
end

puts 'Again?'
input = gets.chomp!
until input.downcase == 'no'
  puts 'Ok, here we go again:'
  choice = gets.chomp!
  computer_game(choice)
  puts 'Again?'
  input = gets.chomp!
end
puts 'Really sorry to hear that! Bye!'
