class Person
	def initialize(person = {first_name: 'guest', last_name: 'user', age: 0})
		@first_name = person[:first_name]
		@last_name = person[:last_name]
		@age = person[:age]
	end

	def full_name
		"#{@first_name} #{@last_name}"
	end

	def is_major?
		@age >= 19 ? true : false
	end
end
