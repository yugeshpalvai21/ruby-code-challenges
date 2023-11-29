def generate_alphabets
  [*"a".."z"]
end

RSpec.describe "#generate_alphabets" do
  it 'will generate array of alphabets' do
    expect(generate_alphabets[-1]).to eq "z"
  end
end