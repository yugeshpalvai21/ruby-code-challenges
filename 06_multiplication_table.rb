# multiplication table of given number
# when given number, it prints multiples of 1 to 10

def multiplication_table number    
    (1..10).each { |num| puts "#{number} * #{num} = #{number*num}"  }
end

multiplication_table 216