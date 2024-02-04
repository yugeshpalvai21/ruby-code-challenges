# multiplication table of given number

def multiplication_table number
    hash = {}

    1.upto(number) do |num|
        num_table = []
        1.upto(10) do |digit|
            num_table << digit * num
        end
        hash[num] = num_table
    end

    hash
end

table =  multiplication_table 3

p table
