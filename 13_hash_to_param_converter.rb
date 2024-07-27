# programme that converts given hash to url friendly parameter
# this illustrates monkey patching
# 
class Hash
    def param_converter
        self.map { |i| i * "=" } * "&"
        # self.map { |key, value| [key, value].join("=") }.join("&")

    end
end

hash_value = { first_name: 'yugesh', last_name: 'palvai' }

puts hash_value.param_converter