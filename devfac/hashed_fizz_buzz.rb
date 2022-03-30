def hashed_fizz_buzz num
  result = Hash.new
  1.upto(num) do |num|
    result["#{num}"] = if num%5 == 0 && num%3 == 0
      "fizzbuzz"
    elsif num%5 == 0
      "buzz"
    elsif num%3 == 0
      "fizz"
    else
       "#{num}"
    end
  end
  result
end

RSpec.describe "#hashed_fizz_buzz" do
  it 'will replace fizzbuzz values in given hash' do
    result_hash = { "1" => "1",
        "2" => "2",
        "3" => "fizz",
        "4" => "4",
        "5" => "buzz",
        "6" => "fizz",
        "7" => "7",
        "8" => "8",
        "9" => "fizz",
        "10" => "buzz",
        "11" => "11",
        "12" => "fizz",
        "13" => "13",
        "14" => "14",
        "15" => "fizzbuzz"
      }
    expect(hashed_fizz_buzz 15).to eq result_hash
  end
end