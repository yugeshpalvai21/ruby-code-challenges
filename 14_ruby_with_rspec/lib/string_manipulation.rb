class StringManpulation 
    def alphabet_generator
        ('a'..'z').to_a
    end

    def increment_string str
        str << str[-1].next
    end
end