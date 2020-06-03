RSpec.describe 'Example Group' do
    before(:context) do
        puts "Global Before Context Execution"
    end
    after(:context) do
        puts "Global After Context Execution"
    end
    before(:example) do
        puts "Global Before Example Execution"
    end
    after(:example) do
        puts "Global After Example Execution"
    end

    it 'individual example' do
        expect(4+5).to eq(9)
    end

    describe 'nested example group' do
        before(:context) do
            puts "Local Before Context Execution"
        end
        after(:context) do
            puts "Local After Context Execution"
        end
        before(:example) do
            puts "Local Before Example Execution In Nested Group"
        end
        it 'indi example in nested group' do
            expect(true).to eq true
        end
    end

    context 'another nested group' do
        before(:context) do
            puts "Local Before Context Execution"
        end
        after(:context) do
            puts "Local After Context Execution"
        end
        before(:example) do
            puts "Local Before Example Execution In Another Nested Group"
        end
        it 'indi example in another nested group' do
            expect(true).to eq(true)
        end
    end
end