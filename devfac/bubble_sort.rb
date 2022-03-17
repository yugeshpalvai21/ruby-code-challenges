RSpec.describe Array do
  describe '#bubble_sort' do
    test_arr = [3,5,2,10,6]
    expect(test_arr.bubble_sort).to eq(test_arr.sort)
  end
end