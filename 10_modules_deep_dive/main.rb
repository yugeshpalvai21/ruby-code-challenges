# modules are wrappers of ruby code
# modules can't be instantiated

# modules can used as namespaces
module Wrap
	class A
		def method1
			"return result	from module result"
		end
	end
end

class A
	def method1
		"return result from class result"
	end
end

instance1 = A.new
puts instance1.method1

instance2 = Wrap::A.new
puts instance2.method1



# modules as mixins

module Person
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		"#{@firts_name.to_s.capitalize} #{@last_name.to_s.capitalize}"
	end
end

class Employee
	include Person
end

class Manager
	include Person
end


employee = Employee.new("Yugesh", "palvai")
manager = Manager. new("John", "Doe")

puts employee.full_name
puts manager.full_name


#using extend method instead of include in class allows to access module methods as class methods
#using prepend method method instead of include allows to override class method with module method