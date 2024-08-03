puts "Welcome to the game..."
print "guess the numer between 1 and 100 (q for quit) > "

lottery_number = rand(1..100)

user_choice = gets.chomp
until user_choice == 'q'
    if user_choice.to_i == lottery_number
      puts "Voila !!! You've guessed correct number. Congratulations"
      break
    else
      puts "You've selected wrong number !!!"
      print "Choose Your Choice for next round(q for quit) > "
      user_choice = gets.chomp
    end
end

puts "Thanks for spending time.."