class Array
  def avg
    sum/count
  end
end

RSpec.describe "Array#avg" do
  it 'will returns average value of given array elements' do
    arr = [2, 20, 12, 4]
    expect(arr.avg).to eq 9
  end
end