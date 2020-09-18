def find_ones number
    ones = 0
    arr = number.to_s.split("")
    bin_str = arr.map { |num| num.to_i.to_s(2) }
    bin_str.join("").each_char { |char| ones += 1 if char.to_i == 1 }
    
    "Binary form of #{number} is - #{bin_str.join} AND number of ones in binary data is - #{ones}"
end

p find_ones 10
p find_ones 1234
p find_ones 2048

p find_ones 28569
p find_ones 456985
