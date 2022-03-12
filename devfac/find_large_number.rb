def find_large_number arr
  arr.inject { |a, v|  a > v ? a : v }
end

RSpec.describe "#find_large_number" do
  it 'will returns large number in given array' do
    array_of_numbers = [10, 23, 5, 34, 3]
    expect(find_large_number(array_of_numbers)).to eq 34
  end
end