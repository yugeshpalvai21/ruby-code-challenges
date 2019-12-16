def leap_years(years)
    leap = []
    years.each do |year|
        if (((year%4 == 0) && (year%100 != 0)) || (year%400 == 0)) 
            leap << year
        end
    end
    puts leap.inspect
    leap
end

RSpec.describe 'Finding Leap Year' do
    it 'will list all leap years in given range of years' do
        years = (2000..2010).to_a
        expect(leap_years(years)).to eq([2000,2004, 2008])
    end
end 