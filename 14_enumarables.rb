# Programm that adds enumarable module to any given custom class 
# this illustrates ruby meta programming

class Person
    include Enumerable
    def initialize(*people)
        @people = people.flatten
    end

    def map(&block)
        result = []
        self.each { |mem| result << block.call(mem) }
        result
    end

    def each(&block)
        @people.each { |member| block.call(member) }
    end
end

people = Person.new 'yugesh', 'raam', 'palvai', 'john'

pp people

people.each { |person| p person.capitalize }

pp people.map { |person| person.upcase }