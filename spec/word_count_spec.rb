class String
    def word_count
        scan(/\w+/).count
    end
    
    def word_usage
        result = Hash.new(0)
        downcase.scan(/\w+/) { |w| result[w.to_sym] += 1}
        result
    end
end

RSpec.describe 'String word count and usage' do
    it 'returns no of words in given string by removing special symbols' do
        str = 'there is no shortcut / to success except - hardwork'
        expect(str.word_count).to eq(8)
    end

    it 'returns hash of every word usage count' do
        str = 'something is Something Okay'
        expect(str.word_usage).to eq({something: 2, 
                                        is: 1, 
                                        okay: 1})
    end
end