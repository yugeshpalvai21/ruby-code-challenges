def max_array test_array
    max_value = 0
    test_array.each do |item|
        if item.to_i > max_value
            max_value = item
        end
    end
    max_value
end


RSpec.describe 'Finding Largest Number In Array' do
    it 'returns the largest value in given array' do
        #arr = Array.new(100) { rand(1..1000) }
        test_array = [12,45,89,14]
        expect(max_array(test_array)).to eq(89)
    end
end