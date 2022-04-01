def array_hash_generator headers, data
    headers.zip(data).reduce({}) { |result, data|  result[data[0]] = data[1]; result }
end

RSpec.describe "#array_hash_generator" do
  it 'will generates hash from multiple arrays' do
    arr1 = ["first_name", "last_name", "role"]
    arr2 = ["yugesh", "palvai", "superuser"]
    expect(array_hash_generator(arr1, arr2)).to eq({ "first_name" => "yugesh",
                                                    "last_name" => "palvai",
                                                    "role" => "superuser" })
  end
end