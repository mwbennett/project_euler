=begin 

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end 

require 'prime'

def sum_of_primes(ceiling)
  primes_arr = []
  Prime.each(ceiling) do |thing|
    primes_arr << thing
  end
  return primes_arr.reduce(:+)
end

sum_of_primes(2000000)