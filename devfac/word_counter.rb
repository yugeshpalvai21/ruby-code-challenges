class String
  def word_count
    self.scan(/\w+[a-zA-Z]/).length
  end
end

RSpec.describe String do
  describe "#word_count" do
    it 'will counts number of occurences of english words' do
      str = "- the quick brown fox / jumped over 45 the lazy fox."
      expect(str.word_count).to eq 9
    end
  end
end