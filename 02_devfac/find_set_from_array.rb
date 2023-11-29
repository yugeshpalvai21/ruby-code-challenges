def find_array_set arr, pivot
  arr.inject([]) { |a, v| v > pivot ? a << v : a }
end

RSpec.describe "#find_array_set" do
  it "generates new array elements greater than given number" do
    array_of_numbers = [10, 2, 34, 56, 99,12, 45]
    pivot_number = 30
    expect(find_array_set(array_of_numbers, pivot_number)).to eq([34, 56, 99, 45])
  end
end

