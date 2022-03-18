def factorial num
  return 1 if num == 1
  num * factorial(num-1)
  # result = 1
  # num.downto(1) { |i| result *= i }
  # result

end

RSpec.describe '#factorial' do
  it 'will returns the factorial result for given number' do
    input_number = 5
    expect(factorial(input_number)).to eq 120
  end
end