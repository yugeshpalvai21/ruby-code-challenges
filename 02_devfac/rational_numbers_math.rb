def fraction_calculator frac1, frac2, operator
  num1 = Rational(frac1)
  num2 = Rational(frac2)

  result = case operator
  when "*" then num1 * num2
  when "+" then num1 + num2
  when "-" then num1 - num2
  when "/" then num1 / num2
  else
    return 0
  end
  
  result.to_s
end

RSpec.describe "#rational_arithmetic" do
  it "will perform arithmetic operation on given rational numbers" do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end