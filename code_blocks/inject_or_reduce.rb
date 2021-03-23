#longest_word
countries = ["united states", "united kingdom", "india", "norway"]

longest_country =countries.inject {|longest, country| longest.length > country.length ? longest : country }
p longest_country

#sum of numbers in array

nums = [2,1,2,4,6,7,8]
p nums.reduce(&:+)

#number of word occurences in str

str = "there is no shortcut to success except hard work and there is no otherway"

result = str.split(" ").inject(Hash.new(0)) { |results, word| results[word] += 1; results }
p result


# convering all words to upcase in array
names = %w(yugesh palvai sachin)
p names.map(&:upcase)