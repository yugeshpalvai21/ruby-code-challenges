def repeat_array str, n
  str_array = str.split("")
  str_array.each { |char| str_array << char if str_array.length < n }
  str_array.join("")
end

def character_count str, char
  str.count(char)
end


RSpec.describe "#repeat_array" do
  before(:example) do 
    @s = 'bdsd'
    @n = 9
  end

  it 'will adds character to last unitl its reach given length' do
    expect(repeat_array(@s, @n)).to eq "bdsdbdsdb"
  end

  it 'will finds character number of occurances' do
    result_str = repeat_array(@s, @n)
    expect(character_count(result_str, "b")).to eq 3
  end
end