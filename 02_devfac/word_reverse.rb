def string_reverse str
  str.split(" ").reverse.join(" ")

  ## Detailed Approach

  # result_str = []
  # str.split(" ").each do |word|
  #   result_str.unshift(word)
  # end
  # result_str.join(" ")
end

RSpec.describe 'Reversing Words' do
  it 'will reverse each word in a given array' do
    string_input = "dog lazy the over jumped fox brown quick The"
    expect(string_reverse(string_input)).to eq("The quick brown fox jumped over the lazy dog")
  end
end