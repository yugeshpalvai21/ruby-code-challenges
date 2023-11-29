class Array
    def each
        if block_given?
            i = 0
            while(i < self.length)
                yield(self[i]) 
                i += 1
            end
        end
        self
    end
end

p [1,2,3].each { |val| puts "TUMBRI HACKED #{val}" }