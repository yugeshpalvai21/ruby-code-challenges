new_proc = Proc.new { |var| puts var * var }

# Examin Proc Object 
p new_proc.class
p new_proc.class.superclass
p new_proc.class.ancestors

#calling Proc 

new_proc.call(5)
new_proc.call(10)