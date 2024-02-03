# file_content = File.open("sample_text.txt", "r").read
# full_names = file_content.split("\n")
# puts full_names.inspect
# puts full_names.sort.inspect

# result = full_names.sort { |first, last| first.split(" ")[1] <=> last.split(" ")[1] }
# puts result.inspect

#shorthand solution

result = File.open("sample_text.txt", "r")
             .read
             .split("\n")
             .sort { |person_one, person_two| person_one.split.last <=> person_two.split.last }

puts result.inspect
