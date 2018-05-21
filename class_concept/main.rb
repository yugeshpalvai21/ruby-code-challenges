# class declaration
class Person
	attr_reader :first_name, :last_name, :age  # creates reader & writer methods, instace variable
	attr_writer :first_name, :last_name, :age 
	@@organization = "KIMS" # class variable

	# class method
	def self.organization 
		@@organization
	end

	#constructor
	def initialize(first_name = "John", last_name = "Doe", age=0)
		@first_name = first_name
		@last_name = last_name
		@age = age.to_i
	end

	#nstance methods
	def full_name
	 	"#{@first_name} #{@last_name}"
	end

	def is_eligible?
		@age >= 18 ? true : false
	end

	def change_details
		print "Please Enter Your First Name: "
		self.first_name = gets.chomp   # call another method of same instace
		puts
		print "Please Enter Your Last Name: "
		self.last_name = gets.chomp
		puts
		print "Please Enter Your Age: "
		self.age = gets.chomp
		puts "Welcome Mr. #{full_name}"
	end

	def details
		"Name: #{self.full_name}, Age: #{@age}"
	end
end

# single Inheritence
class Doctor < Person
	def initialize(first_name = 'John', last_name = 'Doe', age= '0',specialize)
		super(first_name, last_name, age)
		@specialize  = specialize
	end

	def details
		result = super
		result + " Type: Doctor, Specializes: #{@specialize}"
	end
end



#creating instace for Peson class
# yugesh = Person.new
# ramesh = Person.new("ramesh", "tendulkar", 28)

# puts yugesh.full_name
# puts ramesh.full_name

# puts yugesh.is_eligible?
# puts yugesh.first_name
# yugesh.first_name=("Raam")
# puts yugesh.first_name

# yugesh.change_details

# creating instace for Doctor

doc1 = Doctor.new("heart")
p doc1.class
p doc1.class.ancestors
p doc1.full_name

p Doctor.organization

p doc1.details

