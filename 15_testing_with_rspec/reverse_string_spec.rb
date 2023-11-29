#sample Input is 'world hello'
#sample output is 'hello world'

def reverse_string(str)
    str.split(" ").reverse.join(" ")
end

RSpec.describe 'Reverse String' do
    it 'displays the given string in reverse order' do
        str = 'world hello'
        rev_str = reverse_string(str)
        expect(rev_str).to eq('hello world')
    end
end