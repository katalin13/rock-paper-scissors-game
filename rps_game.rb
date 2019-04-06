puts 'Welcome to a game of luck:'
puts '-'*26
puts '    Rock Paper Scissor'
puts 'Your component will be The Computer !'
puts 'Willing to play?'
user_input = gets.chomp!

def computer_game(player)
  cpu_choice = ['rock', 'paper', 'scissors']
  cpu =cpu_choice.sample
  result = if player == cpu
    'Draw...'
    
  else
    case player
      when 'rock'
        cpu == 'scissors' ? 'You won!' : 'You lost!'
      when 'paper'
        cpu == 'rock' ? 'You won!' : 'You lost!'
      when 'scissors' 
        cpu == 'paper' ? 'You won!' : 'You lost!'
    end
  end
  puts "#{cpu}, #{result}"
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
