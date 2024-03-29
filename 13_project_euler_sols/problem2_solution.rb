# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By 
# starting #with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find # the sum of the even-valued terms.

def fib_series_sum_generator max_value
  fib_series = [1,2]

  while fib_series[-1] < max_value
    break if (fib_series[-1] + fib_series[-2]) > max_value
    fib_series << fib_series[-1] + fib_series[-2]
  end
  
  fib_series.select { |num| num%2 == 0 }.sum
end

p fib_series_sum_generator 40_00_000
p fib_series_sum_generator 100