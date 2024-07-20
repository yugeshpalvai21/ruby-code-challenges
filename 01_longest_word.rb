# Programm that prints logest word in given sentence
def longest_word sentence
    # str.split(" ").inject("") { |accum, word| accum.length > word.length ? accum : word }
    sentence.split.reduce { |accum, word| accum.length > word.length ? accum : word }
end

sentence = 'The quick brown fox jumped over the lazy dog'

puts longest_word sentence
