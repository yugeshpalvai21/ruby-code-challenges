# file_content = File.open("sample_text.txt", "r").read
# full_names = file_content.split("\n")
# puts full_names.inspect
# puts full_names.sort.inspect

# result = full_names.sort { |first, last| first.split(" ")[1] <=> last.split(" ")[1] }
# puts result.inspect

#single line solution

result = File.open("sample_text.txt", "r").read.split("\n").sort { |first, last| first.split(" ")[1] <=> last.split(" ")[1] }

puts result.inspect



