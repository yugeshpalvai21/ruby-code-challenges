def palindrome? word
  word_parse = word.scan(/[a-zA-Z]/).join("").downcase
  # p word_parse
  # p word_parse.reverse
  word_parse == word_parse.reverse
end

RSpec.describe "#palindrome?" do
  context 'when its a palindrome word' do
    it 'will returns true' do
      word = "A man, a plan, a canal: Panama"
      expect(palindrome?(word)).to be true
    end
  end

  context 'when its not a palindrome word' do
    it 'will returns false' do
      word = "yugesh"
      expect(palindrome?(word)).to be false
    end
  end
end