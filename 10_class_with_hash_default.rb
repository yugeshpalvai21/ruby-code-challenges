# class with named arguments

class Movie
  attr_accessor :name, :released_year, :category

  def initialize(name: 'Anonymous', year: '1900', category: 'History')
    @name = name
    @released_year = year
    @category = category
  end

  def details
    "#{ name.upcase } - #{ released_year } - #{ category.upcase }"
  end
end

movie = Movie.new(name: 'apollo', year: '1985' )
puts movie.details

movie2 = Movie.new
puts movie2.details

