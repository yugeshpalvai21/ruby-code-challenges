def prime_number? number
    # solution one
    # divisible_count = 0
    # 1.upto(number) { |num| divisible_count += 1 if number%num == 0 }
    # divisible_count == 2 ? "#{number} Is Prime Number" : "#{number} Is Not A Prime Number"


    # solution 2
    counter = [*1..number].reduce(0) {|count, num| number%num == 0 ? count + 1 : count }
    counter == 2 ? true : false
end

puts prime_number? 1
puts prime_number? 2
puts prime_number? 5
puts prime_number? 7
puts prime_number? 10
