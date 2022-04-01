def array_rotation arr, num
  result = Array.new(arr.length)
  arr.each_with_index { |ele, idx| result[idx-num] = ele }
  result
end

RSpec.describe "#array_rotation" do
  it 'rotates array elements given number of times' do
    expect(array_rotation([1,2,3], 2)).to eq [3,1,2]
  end
end