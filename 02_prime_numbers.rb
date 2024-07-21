# programm to print weather given number is prime number or not
# A prime number is a number that can only be divided by itself and 1 without remainders.

def is_prime_number? number
    # solution one
    # divisible_count = 0
    # 1.upto(number) { |num| divisible_count += 1 if number%num == 0 }
    # divisible_count <= 2 ? "#{number} Is Prime Number" : "#{number} Is Not A Prime Number"


    # # solution 2
    counter = [*1..number].reduce(0) {|count, num| number%num == 0 ? count + 1 : count }
    counter == 2 ? true : false
end

puts is_prime_number? 1
puts is_prime_number? 2
puts is_prime_number? 5
puts is_prime_number? 7
puts is_prime_number? 10


def prime_numbers target_num
    prime_numbers = []

    1.upto(target_num) do |number|
        prime_numbers << number if is_prime_number? number
    end

    prime_numbers
end


p prime_numbers 100