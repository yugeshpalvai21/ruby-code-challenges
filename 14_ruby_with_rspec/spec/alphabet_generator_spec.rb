require 'string_manipulation'

RSpec.describe StringManpulation do
    it 'returns array that consists all alphabets' do
        expect(subject.alphabet_generator).to eq([*'a'..'z'])
        expect(subject.alphabet_generator).to include('p')
        # expect(subject.alphabet_generator).to eq(('a'..'z').to_a)
    end
end 