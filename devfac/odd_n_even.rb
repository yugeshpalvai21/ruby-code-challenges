def odd_n_even arr
  result = Hash.new { |h, k| h[k] = [] }
  arr.map { |num| num.to_i.even? ? result[:even] << num : result[:odd] << num }
  result
end

RSpec.describe "#odd_n_even" do
  it 'will return odd and even numbers in given array' do
    arr = [12, 45, 36, 121, 198, 656, 847]
    expect(odd_n_even(arr)).to eq({
                                        even: [12, 36, 198, 656],
                                        odd: [45, 121, 847]
                                      })
  end
end
