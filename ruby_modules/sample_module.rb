# Modules Can be Use as NameSPaces
# Modules Can be used as Mixins 
# Multiple Inheritence Achieved using Modules in Ruby
require_relative 'sample_module1'

module Person
    URL = "https://www.rubycommunity.org"

    def self.name
        "Yugesh Palvai"
    end

    class Info
        extend Company
        def initialize
            @name = Person.name
        end

        def name
            @name
        end
    end
end


# puts Person::URL

# puts Person.name

# info = Person::Info.new
# puts info.inspect

# puts info.name

puts Person::Info.company_name