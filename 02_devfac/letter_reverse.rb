def letter_reversing str
  result = []
  str.each_char { |char| result.unshift(char) }
  result.join("")
end

RSpec.describe '#letter_reversing' do
  it 'will reverse every character in given string' do
    expect(letter_reversing('hello world')).to eq 'dlrow olleh'
  end
end