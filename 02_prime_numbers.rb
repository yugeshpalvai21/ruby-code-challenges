def prime_number? number
    divisible_count = 0
    1.upto(number) { |num| divisible_count += 1 if number%num == 0 }
    divisible_count == 2 ? "#{number} Is Prime Number" : "#{number} Is Not A Prime Number"
end

puts prime_number? 1
puts prime_number? 2
puts prime_number? 5
puts prime_number? 7
puts prime_number? 10