=begin

The sum of the squares of the first ten natural numbers is,
12 + 22 + ... + 102 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)2 = 552 = 3025

Hence the difference between the sum of the squares of the first ten natural 
numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one 
hundred natural numbers and the square of the sum.

=end 

def sum_squares(input_value)
	num_arr = (1..input_value).to_a
	total = 0
	num_arr.each do |x|
		square = x ** 2
		total += square
	end
	return total 
end 

def square_sum(input_value)
	num_arr = (1..input_value).to_a
    total = 0
	num_arr.each do |x|
		total += x
	end
	return total ** 2 
end 

def difference(num)
	return square_sum(num) - sum_squares(num)
end

difference(10)





