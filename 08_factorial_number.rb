def factorial_number number 
    result = 1
    number.downto(1) { |num| result *= num }
    result
end

puts factorial_number 4