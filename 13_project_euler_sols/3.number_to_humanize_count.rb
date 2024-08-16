# calulate characters of humanize format of given array of numbers

# install library `gem install humanize`

require 'humanize'

def calculate_humazize_count input_array
  humanize_format = input_array.map(&:to_i).map(&:humanize)
  result_without_spaces_and_underscores = humanize_format.map { |str| str.gsub(" ", "").gsub("-", "")}
  total_sum_of_characters = result_without_spaces_and_underscores.inject(0) { |acc, str| acc + str.length }
  total_sum_of_characters
end

p calculate_humazize_count [*1..1000]
