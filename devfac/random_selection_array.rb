def today_special hash
  hash.reduce("") { |a, (k,v)| a << " #{k.upcase}-#{v.sample}"}.class 
end


RSpec.describe '#today_special' do
  it 'will selects random item from array of items nested in hash' do
    menu = {
      appetisers: %w(chips salads brads),
      main: %w(steak chicken lobster),
      desserts: %w(cupcake cheesecake cake)
    }
    
    expect(today_special(menu)).to eq String
  end
end