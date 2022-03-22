def increment_character word
  word << word[-1].next
end

RSpec.describe "#increment_character" do
  it "will adds next character of last character in given string" do
    expect(increment_character("abcd")).to eq "abcde"
    expect(increment_character("1234")).to eq "12345"
  end
end