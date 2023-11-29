def alphabet_generator
    ('a'..'z').to_a
end

RSpec.describe "Alphabet Generator Method" do
    it 'returns array that consists all alphabets' do
        expect(alphabet_generator).to eq(('a'..'z').to_a)
    end
end 