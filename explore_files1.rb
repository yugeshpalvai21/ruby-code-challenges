File.open('sample_text.txt', 'w') do |file|
    file.puts "Hello World"
    file.puts "This File Is Created From"
    file.puts "Ruby File Class"
end

# data = File.read('sample_text.txt')
# p data.split("\n")


# p File.exists?('sample_text.txt')
# p File.file?('sample_text.txt')
# p File.size('sample_text.txt')
# p __FILE__
# p File.basename(__FILE__)
# p File.extname(__FILE__)
# p File.dirname(__FILE__)
# p File.expand_path(File.dirname(__FILE__))
# p File.join(File.expand_path(File.dirname(__FILE__)), '..')


p File.directory?(__FILE__)
p File.dirname(__FILE__)
p Dir.entries(File.dirname(__FILE__))
p Dir.entries(File.join(File.expand_path(File.dirname(__FILE__), '..')))

