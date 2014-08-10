# PE #3:
 
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

def largest_prime_factor(number)
	lst = number.prime_division
	primes = []
	lst.each do |x|
		primes.push(x[0])
	end
	answer = primes.max
	puts answer
end 

largest_prime_factor(600851475143)