demo_hash = { 
                first_name: 'yugesh', 
                last_name: 'palvai',
                location: {
                    city: 'HYD',
                    country: 'IND'
                }
            }

puts demo_hash[:first_name]
puts demo_hash[:location][:country]

puts demo_hash.dig(:first_name)
puts demo_hash.dig(:location, :country)