class Array
  def bubble_sort
    arr_length = self.length
    loop do
      sorted = false
      (arr_length-1).times do |i|  #we don't need to compare last element
        if self[i] > self[i+1]
          self[i], self[i+1] = self[i+1], self[i]
          sorted = true
        end
      end
      break unless sorted
    end
    self
  end
end

RSpec.describe Array do
  describe '#bubble_sort' do
    it 'will sort given array elements' do
      test_arr = [3,5,2,10,6]
      expect(test_arr.bubble_sort).to eq(test_arr.sort)
    end
  end
end