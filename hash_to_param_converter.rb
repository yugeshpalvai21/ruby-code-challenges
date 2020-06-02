class Hash
    def param_converter
        self.map { |i| i * "=" } * "&"
    end
end

hash_value = { first_name: 'yugesh', last_name: 'palvai' }

puts hash_value.param_converter