# ceaser cipher programm is used to basic encryption
# the logic is change charater based on given value 
# ex. if value is 2  then A becomes C, B becomes D

# every letter is represented by it's ascii number

def ceaser_cipher(string, value)
	ascii = string.chars.map(&:ord) 
	target_ascii = ascii.map { |number| number + value}
	result = target_ascii.map(&:chr).join("")
	return result
end


p ceaser_cipher("testing", 7)