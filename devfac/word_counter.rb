class String
  def extract_words
    self.scan(/\w+[a-zA-Z]/)
  end

  def word_count
    extract_words.length
  end

  def word_list
    result = Hash.new(0)
    extract_words.each { |word| result[word.to_sym] += 1 }
    result
  end
end

RSpec.describe String do
  let(:str) { "- the quick brown fox / jumped over 45 the lazy fox." }

  describe "#word_count" do
    it 'will counts number of occurences of english words' do
      expect(str.word_count).to eq 9
    end
  end

  describe "#word_list" do
    it 'will counts number of occurences of each word' do
      expect(str.word_list).to eq({the: 2, 
                                    quick: 1,
                                    brown: 1,
                                    fox: 2,
                                    jumped: 1,
                                    over: 1,
                                    lazy: 1
                                  })
    end
  end
end