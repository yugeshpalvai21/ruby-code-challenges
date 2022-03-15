def nested_sort arr
  arr.sort_by { |nes_arr| nes_arr.first.split("-").last[-1].to_i }
end

RSpec.describe "#nested_sort" do
  it 'will sort given nested array' do
    given_array = [['king3-b4', 2, 5], ['king1-t1', 1, 2], ['king2-l7', 4, 1]]
    expect(nested_sort(given_array)).to eq [['king1-t1', 1, 2], ['king3-b4', 2, 5], ['king2-l7', 4, 1]]
  end
end