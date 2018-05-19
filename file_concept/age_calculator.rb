def age_calculator(age)
	case age
	when 0..18
		"Minor"
	when 19..60
		"Major"
	else
		"Retired"
	end 
end