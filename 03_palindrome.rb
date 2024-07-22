# programm on checking weather given string is palindrome or not
# A palindrome is a word, number, or phrase that reads the same backward and forward, such as “civic” or “2002.”
def palindrome? str
    str.to_s.downcase == str.to_s.reverse.downcase
end

puts palindrome? 'hello'
puts palindrome? 'tacocat'
puts palindrome? 'TacoCat'
puts palindrome? 2002