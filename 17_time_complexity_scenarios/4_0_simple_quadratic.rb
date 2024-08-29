# O(n^2): Quadratic Time Complexity

# Description: The time grows quadratically with the input size. This typically occurs with nested loops.
# Example: A double loop to check all pairs in an array.

input = [10, 20, 30, 40, 50]


def sample_sums arr
  result = []
  arr.each do |i|
    arr.each do |j|
      result <<  i + j
    end
  end

  result
end

response = sample_sums input
p response
p response.count


# example two, sorting with nested loop

def sortout arr
  arr.each_with_index do |num, i|
    arr.each_with_index do |num, j|
      arr[i], arr[j] = arr[j], arr[i] if arr[i] > arr[j]
    end
  end

  arr
end

p sortout input