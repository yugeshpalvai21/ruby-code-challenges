puts "### creating new file ###"
File.open('sample_text.txt', 'w') do |file|
    file.puts "Hello World"
    file.puts "This File Is Created From"
    file.puts "Ruby File Class"
end
puts "### created new file ###"

puts "### reading file ###"
data = File.read('sample_text.txt')
p data

puts "### inspecting file with basic details ###"

p File.exist?('sample_text.txt')
p File.file?('sample_text.txt')
p File.size('sample_text.txt')
p __FILE__
p File.basename(__FILE__)
p File.extname(__FILE__)
p File.dirname(__FILE__)
p File.expand_path(File.dirname(__FILE__))
p File.join(File.expand_path(File.dirname(__FILE__)), '..')


puts "### inspecting directory  ###"
p File.directory?(__FILE__)
p Dir.entries(File.dirname(__FILE__)) # list all files in the given directory
p Dir.entries(File.join(File.expand_path(File.dirname(__FILE__), '..')))

