def full_names
    names = []
    1.upto(10) { |i| names << yield("firstName#{i}", "lastName#{i}") }
    names
end

puts full_names { |first, last| "#{first} #{last}" }