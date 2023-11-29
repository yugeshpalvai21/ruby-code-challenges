class Users
	# include Enumerable

	def initialize
		@users = %w[Yugesh Palvai John]  
	end

	def each
		for user in @users do
			yield user
		end
	end

	def map
		result = each { |name| name.capitalize} 
		new_array = []

		i = 0
		while(i < result.length)
			new_array << yield(result[i])
			i += 1
		end
		new_array
	end
end

users = Users.new

p users.class.ancestors
# p users.methods

# p users.each { |name| name.capitalize}
p users.map { |name| name.upcase }