nums = [1,2,3,4,5]
names = ['yugesh', 'palvai', 'mike', 'jordon']

# find/ detect 

p nums.find { |num| num%4 == 0 }

#find_all or select

p names.select { |name| name.length > 4 }

# all? or any?

p names.all? { |name| name.length > 4 }
p names.any? { |name| name.length < 5 }

# delete_if 

p nums.delete_if { |num| num%2 == 0 }  

# merge
