def high_low_game
    puts "Welcome To The Game"
    puts "Please enter number between 0 and 20"
    answer = rand 20
    # p "ANSWER IS - #{answer}"
    loop do
      print "> "
      result = gets.chomp.to_i
      if result > answer
        puts "Higher - Try Again"
      elsif result < answer
        puts "Lower - Try Again"
      else
        puts "CORRECT GUESS"
        break
      end
    end
end

high_low_game