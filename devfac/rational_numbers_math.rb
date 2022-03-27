def fraction_calculator frac1, frac2, operator
  case operator
  when "*" then (Rational(frac1) * Rational(frac2)).to_s
  when "+" then (Rational(frac1) + Rational(frac2)).to_s
  when "-" then (Rational(frac1) - Rational(frac2)).to_s
  when "/" then (Rational(frac1) / Rational(frac2)).to_s
  else
    return 0
  end
end

RSpec.describe "#rational_arithmetic" do
  it "will perform arithmetic operation on given rational numbers" do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end