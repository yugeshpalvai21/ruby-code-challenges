class Person
    include Enumerable
    def initialize(*people)
        @people = people.flatten
    end

    def each(&block)
        @people.each do |member|
            block.call(member)
        end
    end
end

people = Person.new 'yugesh', 'raam', 'palvai', 'john'

pp people

people.each { |person| p person.capitalize }

pp people.map { |person| person.upcase }