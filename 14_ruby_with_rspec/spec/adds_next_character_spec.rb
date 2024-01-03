require 'string_manipulation'

RSpec.describe StringManpulation do
    describe '#increment_string' do
        it 'appends next value to given string' do
            expect(subject.increment_string('abcd')).to eq 'abcde'
            expect(subject.increment_string('123')).to eq '1234'
        end
    end
end