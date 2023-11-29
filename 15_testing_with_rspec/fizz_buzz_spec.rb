def fizz_buzz num
    result = {}
    1.upto(num) do |n|
        if (n%5 == 0) && (n%3 == 0)
            result[n.to_s] = "fizzbuzz"
        elsif n%3 ==0
            result[n.to_s] = "fizz"
        elsif n%5 == 0
            result[n.to_s] = "buzz"
        else
            result[n.to_s] = n.to_s
        end
    end
    result
end

RSpec.describe 'fizz buzz method' do
    it 'returns hash of results' do
        expect(fizz_buzz 15).to eq({"1"=>"1", "10"=>"buzz", "11"=>"11", "12"=>"fizz", "13"=>"13", "14"=>"14", "15"=>"fizzbuzz", "2"=>"2", "3"=>"fizz", "4"=>"4", "5"=>"buzz", "6"=>"fizz", "7"=>"7", "8"=>"8", "9"=>"fizz"})
    end
end