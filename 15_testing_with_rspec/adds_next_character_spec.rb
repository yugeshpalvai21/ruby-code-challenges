def increment_string str
    str << str[-1].next
end

RSpec.describe 'String Increment Mehtod' do
    it 'appends next value to given string' do
        expect(increment_string('abcd')).to eq 'abcde'
        expect(increment_string('123')).to eq '1234'
    end
end