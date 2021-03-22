# In Ruby blocks are not object, normally blocks send as arguments to method call

class Person
    def name
        puts 'before yield'
        if block_given?
            puts "==================="
            puts 'Executing Block'
            yield('yugesh')
            puts "==================="
        end
        puts 'after yield'
    end

    def details(&block_func)
        puts "External Way Of Calling Blocks"
        block_func.call('Yeyyyy') if block_func
    end
end

person = Person.new

person.name

person.name { |name| puts name.upcase }

person.details { |random_string| puts random_string.to_s.capitalize }

## by STANDALONE Blocks are not objects, to make blocks as ruby objects we Use Procs and Lambdas


new_proc = Proc.new { |name| name.capitalize }

puts new_proc.class
puts new_proc.call('yugesh')


### Declaring Blocks with Lambdas
### differences B/W Proc and Lamdas are Checking block arguments and Return Statements
new_lamb = ->(name) { name.upcase }

puts new_lamb.class
puts new_lamb.call('ind')



