=begin 

**PROBLEM**

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

**TEST CASES** 

range_upper_limit -> smallest_positive_multiple 	prime_factorization_upper	prime_factorization_multiple

		1 -> 1							2 ** 0					2 ** 0 								
		2 -> 2 							2 ** 1					2 ** 1 
		3 -> 6 							3 ** 1					2 ** 1; 3 ** 1
		4 -> 12							2 ** 2					2 ** 2; 3 ** 1 
		5 -> 60 						5 ** 1					2 ** 2; 3 ** 1; 5 ** 1 
		6 -> 60							3 ** 1; 2 ** 1 			2 ** 2; 3 ** 1; 5 ** 1
		7 -> 420 						7 ** 1					2 ** 2; 3 ** 1; 5 ** 1; 7 ** 1 
		8 -> 840 						2 ** 3					2 ** 3; 3 ** 1; 5 ** 1; 7 ** 1 
		9 -> 2520						3 ** 2					2 ** 3; 3 ** 2; 5 ** 1; 7 ** 1 
		10 -> 2520 						2 ** 1; 5 ** 1 			2 ** 3; 3 ** 2; 5 ** 1; 7 ** 1 

=end 

require 'prime'

def divisible_by_range(upper_num)
	return 1 if upper_num == 1
	previous = divisible_by_range(upper_num - 1)
	return previous if previous % upper_num == 0
	
  prev_array = previous.prime_division 
	upper_array = upper_num.prime_division 
	return 2 if prev_array.empty?
	
  upper_array.each do |x|
		prev_array.each do |y|
			if (x[0] == y[0]) && (x[1] > y[1])
				return previous * x[0]
			else 
				return previous * upper_array[-1][0]
			end
		end	
	end	
end	
p divisible_by_range(20)
