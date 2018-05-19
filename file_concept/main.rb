# Creating New File and write into it
File.open('data.txt', 'w') do |file|
	file.puts "Hello World"
	file.write "This file is generated with Ruby File class"
end

# Read Data from File

File.open('data.txt', 'r') do |file|
	file.each_line do |line|
		puts line
	end
end

#predicate methods on File class

puts File.exists?('data.txt')
puts File.readable?('data.txt')
puts File.writable?('data.txt')
puts File.size('data.txt').to_s + " Bytes"


# Renaming And Deleting File

File.rename('data.txt', 'data_revised.txt')
File.delete('data_revised.txt')
File.exists?('data_revised.txt')

#generate absolute path to this file

puts file_name = __FILE__
puts directory_name = File.dirname(file_name)
path = File.expand_path(file_name)
puts path

puts load "age_calculator.rb"
puts age_calculator(17)
puts age_calculator(27)

puts load "age_calculator.rb"
puts age_calculator(17)
puts age_calculator(27)


puts require './age_calculator.rb'
puts age_calculator(17)
puts age_calculator(27)

puts require './age_calculator.rb'
puts age_calculator(17)
puts age_calculator(27)


puts require_relative "age_calculator"
puts age_calculator(17)
puts age_calculator(27)


require_relative 'another_directory/test'