def fib(number)
	series = [0,1]
	number.times do
		num1 = series[-1]
		num2 = series[-2]
		series << num1+num2
	end
	return series
end

puts fib(20).inspect
