require 'benchmark'

def new_array
  Array.new(1_000_000_00) { rand 1000 }
end

def find_large_number_one
  arr = new_array
  p arr.max
end


def find_large_number_two
  arr = new_array
  p arr.inject { |a, v|  a > v ? a : v }
end

def find_large_number_three
  arr = new_array
  p arr.sort.last
end

def find_large_number_four
  arr = new_array
  max_value = 0
  arr.each do |val|
    if val > max_value
      max_value = val
    end
  end
  p max_value
end

Benchmark.bm do |x|
  x.report("WMAX - ") { find_large_number_one }
  x.report("INJECT - ") { find_large_number_one }
  x.report("SORT - ") { find_large_number_one }
  x.report("EACH - ") { find_large_number_one }
end

# RSpec.describe "#find_large_number" do
#   it 'will returns large number in given array' do
#     array_of_numbers = [10, 23, 5, 34, 3]
#     expect(find_large_number(array_of_numbers)).to eq 34
#   end
# end