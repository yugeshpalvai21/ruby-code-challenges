class Movie
  def initialize(details = {})
    defaults = { name: 'Anonymous', year: '1900', category: 'History' }
    defaults.merge!(details)
    @name = defaults[:name]
    @released_year = defaults[:year]
    @category = defaults[:category]
  end

  def details
    "#{ @name.upcase } - #{ @released_year } - #{ @category.upcase }"
  end
end

movie = Movie.new({ name: 'apollo', year: '1985' })
puts movie.details

movie2 = Movie.new
puts movie2.details

