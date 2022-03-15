require 'date'

def find_leap_years years
  leap_years = []
  years.each do |year|
    leap_years << year if Date.new(year).leap?
  end
  leap_years
end

#Another Solution Without RubyGem

# def find_leap_years years
#   leap_years = []
#   years.each do |year|
#     leap_years << year if (year%400 == 0 || year%4 == 0) && ( year%100 !=0 )
#   end
#   leap_years
# end

RSpec.describe '#find_leap_years' do
  it 'finds all leap years in a given range' do
    given_years = (1900..1999).to_a
    expect(find_leap_years(given_years)).to eq([1904, 1908, 1912, 1916, 1920, 1924, 1928, 1932, 1936, 1940, 1944, 1948, 1952, 1956, 1960, 1964, 1968, 1972, 1976, 1980, 1984, 1988, 1992, 1996]
  )
  end
end

