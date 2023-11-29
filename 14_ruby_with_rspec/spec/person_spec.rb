require_relative '../main/person.rb'

describe Person do
	describe "#full_name" do
		context 'when no input given' do
			it "returns guest user" do
				expect(subject.full_name).to eq("guest user")
			end
		end
		context 'when first_name , last_name given' do
			subject { described_class.new({first_name: 'raam', last_name: 'reddy'}) }
			it 'returns concatinated value' do
				expect(subject.full_name).to eq('raam reddy')
			end
		end
	end
	describe '#major?' do
		context 'when user age not exceeds 19' do
			subject { described_class.new({first_name: 'yugesh', last_name: 'reddy', age: 18}) }
			it 'returns false' do
				expect(subject).not_to be_is_major
			end
		end
		context 'when user age is above 19' do
			subject { described_class.new({age: 26, last_name: 'doe',first_name: 'john'}) }
			it 'returns true' do
				expect(subject).to be_is_major
			end
		end
	end
end
