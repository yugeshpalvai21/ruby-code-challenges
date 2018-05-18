require_relative '../main/fizz_buzz.rb'

RSpec.describe "A Fizz Buzz Algorithm" do
	it "returns fizz for number which is divisible by 3" do
		return_value = fizz_buzz(9)
		expect(return_value).to eq("fizz")
	end

	it "returns buzz for number which is divisible by 5" do
		return_value = fizz_buzz(10)
		expect(return_value).to eq("buzz")
	end

	it "returns fizzbuzz for number which is divisible by both 3 AND 5" do
		return_value = fizz_buzz(15)
		expect(return_value).to eq("fizzbuzz")
	end

	it "returns number which is not divisible by both 3 AND 5" do
		return_value = fizz_buzz(19)
		expect(return_value).to eq(19)
	end

end