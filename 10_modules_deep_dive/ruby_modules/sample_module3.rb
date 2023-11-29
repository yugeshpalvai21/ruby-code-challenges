# module Company
#     LOCATION = 'Remote'

#     def self.included(klass)
#         klass.extend(ClassMethods)
#     end

#     module ClassMethods
#         def company_name
#             "RUBYCOMMUNITY.ORG"
#         end
#     end

#     def location
#         Company::LOCATION
#     end
# end

# class Person
#     include Company
# end

# puts Person.company_name
# puts Person.new.location

module Company
    def self.included(klass)
        klass.extend(ClassMethods)
    end

    module ClassMethods
        def company_name
            "RUBYCOMMUNITY.ORG"
        end
    end
end

class Person
    include Company
    def initialize
        @name = 'Yugesh'
    end

    def name
        @name
    end

    def details
        "#{name} is Currently Working on #{Person.company_name}"
    end
end

person = Person.new
puts person.details