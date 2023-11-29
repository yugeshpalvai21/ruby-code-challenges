def fizz_buzz(number = 15)  # default value that we taking is 15
  if number.to_i > 0
    1.upto(number) do |num|
      case
      when num%15 == 0 
        puts "fizzbuzz"
      when num%5 == 0 
        puts "buzz"
      when num%3 == 0 
        puts "fizz"
      else 
        puts num
      end
    end
  else
    "Not a number"
  end
end


fizz_buzz
