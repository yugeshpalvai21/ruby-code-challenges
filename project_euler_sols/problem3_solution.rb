# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# STEP1 - Find  All Factors of Given Number
# STEP2 - Find Prime Factores 
# STEP3 - Find Largest Number

require 'prime'

def largest_prime_factor number
  Prime.prime_division(number).last[0]
end

p largest_prime_factor 600851475143