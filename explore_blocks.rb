def some_method
    yield(5) if block_given?
end

def other_method(&block)
    p block.class
    #block.call
    block.call('yugesh')
end

#calling method without giving block
some_method

#calling method with block given

some_method { |num| puts "Block Is Called with argument - #{num}" }


#calling other_method

other_method { |word| puts "reverse of given word - #{word.reverse}" }