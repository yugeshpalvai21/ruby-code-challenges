# Given an array of integers representing the lengths of wires, your task is to determine the minimum cost required to
# make all wires the same length. 
# The cost to adjust the wires is calculated based on the difference between each wire's length and the target length.


# 1. avg length of all wires -> target
# 2. cost_for_adjustment = target - each wirelenght
# 3. sort above array and give first cost

def minimum_cost wires
  average_length = wires.reduce(&:+)/wires.length
  wires.map { |length| (average_length - length).abs }.reduce(&:+)
end


p minimum_cost [1, 2, 3, 4, 5]