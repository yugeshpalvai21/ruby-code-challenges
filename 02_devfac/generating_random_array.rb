
def generate_random_array
  Array.new(20) { rand 1000 }
  #Second Way
  # Array.new(20).map { |i| rand 1000 }
  
  # Third Way
  # result_array = []
  # 20.times { result_array << rand(1..1000) }
  # result_array
end

RSpec.describe "#generate_array" do
  it "will generates array of random numbers from 1 to 1000" do
    random_set_one = generate_random_array
    random_set_two = generate_random_array
    expect(generate_random_array.count).to eq 20
    expect(random_set_one).not_to eq(random_set_two)
  end
end

