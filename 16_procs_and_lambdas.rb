# new_proc = Proc.new { |var| puts var * var }

# # Examin Proc Object 
# p new_proc.class
# p new_proc.class.superclass
# p new_proc.class.ancestors

# unable to assign blocks to variables with out proc declaration
# some_block = { puts 'hello world' }
# some_block.call

# #calling Proc 

# new_proc.call(5)
# new_proc.call(10)

# #creating lambda in one way
# new_lamda_one = lambda { puts "executing from lambda one" }

# #creating lambda in other way
# new_lambda_two = -> { puts "executing from lambda two" }

# new_lamda_one.call
# new_lambda_two.call



# Differences Between Proc and Lambda

# 1. Proc return last evaluate return value, Lambda first return value
# 2. Proc doesn't care about no.of arugemets whent its called where lamda does


first_proc = Proc.new do |num| 
    num * num
    puts "Overriding generic return statement"
    "Over rided written value"
end


first_block = ->(num) {
    num * num
    puts "Overriding generic return statement"
    "Over rided written value"
}

p first_proc.class.ancestors
p first_block.class.ancestors

puts first_proc.call(5,10)
puts first_block.call(10,5)


