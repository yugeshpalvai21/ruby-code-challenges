def fizz_buzz(number)
  case
  when number%15 == 0 then "fizzbuzz"
  when number%5 == 0 then "buzz"
  when number%3 == 0 then "fizz"
  else number
  end
end
