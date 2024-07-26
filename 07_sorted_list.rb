# sort list of states based on length of characted in each state, 
# this needs be in descending order i.e state with more characters comes first

states = [ "Andhra Pradesh",
"Arunachal Pradesh",
"Assam",
"Bihar",
"Chhattisgarh",
"Goa",
"Gujarat",
"Haryana",
"Himachal Pradesh",
"Jammu and Kashmir",
"Jharkhand",
"Karnataka",
"Kerala",
"Madhya Pradesh",
"Maharashtra",
"Manipur",
"Meghalaya",
"Mizoram",
"Nagaland",
"Odisha",
"Punjab",
"Rajasthan",
"Sikkim",
"Tamil Nadu",
"Telangana",
"Tripura",
"Uttarakhand",
"Uttar Pradesh",
"West Bengal",
"Andaman and Nicobar Islands",
"Chandigarh",
"Dadra and Nagar Haveli",
"Daman and Diu",
"Delhi",
"Lakshadweep",
"Puducherry"]

# puts states.sort.reverse.inspect

puts "##### sorting in descending order #######"
puts (states.sort { |state_one, state_two| state_two.length <=> state_one.length })

puts "##### sorting in ascending order #######"
puts states.sort { |state_one, state_two| state_one.to_s.size <=> state_two.to_s.size }
