def palindrome? str
    str.downcase == str.reverse.downcase
end

puts palindrome? 'hello'
puts palindrome? 'tacocat'
puts palindrome? 'TacoCat'