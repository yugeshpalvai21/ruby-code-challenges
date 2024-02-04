# programm for factorial number eg: 5*4*3*2*1

def factorial_number number
    [*1..number].reduce(:*)
    # result = 1
    # number.downto(1) { |num| result *= num }
    # result
end

puts factorial_number 5
