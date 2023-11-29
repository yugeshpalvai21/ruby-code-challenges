# float takes number and strip down to 13 digits after .
# BigDecimal always takes argument in string format

require 'bigdecimal'

def multiply_big_decimal num1, num2
  (BigDecimal(num1) * BigDecimal(num2)).to_s("F")
end

RSpec.describe "#multiply_big_decimal" do
  it "will returns accurate result of given numbers multiplication" do
    num1 = "26.1934232342341123213213213213213213"
    num2 = "54.2342343242343243242342342342342317"
    expect(multiply_big_decimal(num1, num2)).to eq("1420.58025343929654250741932029851548601612652249499090810191272353434521")
  end
end