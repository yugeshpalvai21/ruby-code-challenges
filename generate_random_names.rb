first_names = File.open("first_names.txt").read.split("\n")
last_names = File.open("last_names.txt").read.split("\n")

puts first_names.inspect
puts last_names.inspect

full_names = last_names.map do |last|
    first_names.map do |first|
        "#{first} #{last}"
    end
end

# puts full_names.inspect

File.open("full_names.txt", "w") { |file| file.write full_names.flatten.join("\n") } 



