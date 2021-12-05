# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# STEP1 - Find  All Factors of Given Number
# STEP2 - Find Prime Factores 
# STEP3 - Find Largest Number

def prime? number
  factores = [*2...(number/2).floor].select { |factor| number%factor == 0 }
  factores.empty? ? true : false
end

def largest_prime_factor number
  largest_factor = 0
  counter = 3
  
  while counter <= number
    if (number%counter == 0) && (prime? counter)
      largest_factor = counter
      number = number/counter
    end
    counter += 1
  end
  return largest_factor
end

p largest_prime_factor 600_851_475_143