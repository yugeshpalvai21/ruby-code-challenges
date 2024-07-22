
def total_sum_for_cube_of_odd_numbers numbers
    # Step-1: for any given array of numbers, find out odd numbers
    # Step-2: iterate through each odd number and evaluate cubical of it
    # Step-3: sum up all the numbers from above array
    # This logic illustrates concept of method chaining
    numbers.select { |num| (num.to_i)%2 == 1 }.map { |num| num**3 }.inject(:+)
end

numbers = [2,5,6,8,4,7,13,17, "dsfsdf"]

result = total_sum_for_cube_of_odd_numbers numbers
puts result
