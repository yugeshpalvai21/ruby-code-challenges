def longest_word str
    # str.split(" ").inject("") { |accum, word| accum.length > word.length ? accum : word }
    str.split.reduce { |accum, word| accum.length > word.length ? accum : word }
end

str = 'The quick brown fox jumped over the lazy dog'

puts longest_word str
