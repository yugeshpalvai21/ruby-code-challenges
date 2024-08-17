# find no.of sundays that came on 1st of the any month in give time range


def calculate_days start_year, end_year
  sunday_count = 0

  start_date = Time.new(start_year)
  end_date = Time.new(end_year, 12, 31)

  while start_date <= end_date
    if (start_date.strftime("%A").downcase == 'sunday' && start_date.strftime("%d") == '01')
      sunday_count += 1
    end
    start_date += (24 * 60 * 60)
  end
   sunday_count
end

p calculate_days 1901, 2000