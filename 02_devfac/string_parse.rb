require 'rspec'

array_of_strings = [
  'Web IconHTML & CSS100%',
  'Ruby IconRuby - Ruby IconRuby50%',
  'JQuery IconjQuery1%',
  'Angular JSLearn AngularJS 1.X100%'
]

def string_parse(arr)
  result_array = []
  arr.each do |str|
    result_array << str.scan(/\d+/).last.to_i
  end
  result_array
end


RSpec.describe 'String Parse' do
  it 'will extract integers from given array of words' do
    expect(string_parse(array_of_strings)).to eq([100, 50, 1, 100])
  end
end