def age_calculator(age)
  case age
  when 0..18 then "Minor"
  when 19..60 then "Major"
  else "Retired"
  end 
end
