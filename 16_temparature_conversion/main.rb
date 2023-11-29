def convert_temp(temp, options)
    case options[:input_scale]
        when "celsius"
            case options[:output_scale]
                when "kelvin"
                    temp + 273.15
                when "fahrenheit"
                    (temp * 9.0 / 5) + 32
            else
                temp
            end
        when "kelvin"
            case options[:output_scale]
                when "celsius"
                    temp - 273.15
                when "fahrenheit"
                    ((temp - 273.15) * 9.0 / 5) + 32
            else
                temp
            end
    else
        case options[:output_scale]
            when "celsius"
                (temp - 32) * 5.0 / 9
            when "kelvin"
                ((temp - 32) * (5.0 / 9)) + 273.15
        else
            temp
        end
    end
end

puts convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
puts convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')
puts convert_temp(100, input_scale: 'celsius', output_scale: 'kelvin')
puts convert_temp(152, input_scale: 'fahrenheit', output_scale: 'kelvin')