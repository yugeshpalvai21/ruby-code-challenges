def random_numbers
    result = []
    20.times do 
        result << rand(1..100)
    end
    result
end

RSpec.describe 'Generating Random Numbers' do
    it 'generated random numbers with the length of 20' do
        rand_numbers1 = random_numbers
        rand_numbers2 = random_numbers
        expect(rand_numbers1.count).to eq(20)
        expect(rand_numbers1).not_to eq(rand_numbers2)
    end
end