def palindrome(str)
    str.to_s.downcase == str.to_s.downcase.reverse ? true : false
end

RSpec.describe 'Palindrom' do
    it 'checks string is palindrome or not' do
        expect(palindrome('tacocat')).to eq(true)
        expect(palindrome('TacoCat')).to be_truthy
        expect(palindrome('something')).to be_falsy
        expect(palindrome(121)).to be_truthy
        expect(palindrome(123)).to be_falsy
    end
end

