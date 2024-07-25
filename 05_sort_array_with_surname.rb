# this code mainly focuses on File concept in Ruby

# given scenarion, we have file a that stores each line with person name (first_name last_name)
# and we need to sort those names based on their surnames

# like "Yugesh Palvai, John Doe" => "John Doe, Yugesh Palvai"


result = File.read("sample_text.txt")
             .split("\n")
             .sort { |person_one, person_two| person_one.split.last <=> person_two.split.last }

puts result
