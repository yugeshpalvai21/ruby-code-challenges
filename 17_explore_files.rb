puts "Welcome to the game..."
print "Choose Your Choice(q for quit) > "

choice = gets.chomp
until choice == 'q'
    puts "You've selected #{choice.upcase} "
    print "Choose Your Choice(q for quit) > "
    choice = gets.chomp
end

puts "Thanks for spending time.."