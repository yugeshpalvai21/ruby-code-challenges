#input ['1A', '1B', '1C'], ['sam', 'john', 'mike'], ['ram', 'laxman', 'sachin']
#output [['1A', 'sam', 'ram'],['1B', 'john', 'laxman'],['1c','mike', 'sachin']]

def combine_players(numbers, *positions)
    numbers.zip(*positions)
end

RSpec.describe 'Combining Arrays' do
    it 'combines multiple arrays into single array' do
        numbers = ['1A', '1B', '1C']
        rangers = ['sam', 'john', 'mike']
        strikers = ['ram', 'laxman', 'sachin']
        expect(combine_players(numbers, rangers, strikers)).to eq([['1A', 'sam', 'ram'],['1B', 'john', 'laxman'],['1C','mike', 'sachin']])
    end
end