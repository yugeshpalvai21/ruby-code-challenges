
def sum_add_cubes arr
    arr.select { |num| num%2 == 1 }.map { |num| num**3 }.inject(:+)
end

numbers = [2,5,6,8,4,7,13,17]

result = sum_add_cubes numbers
puts result.inspect

