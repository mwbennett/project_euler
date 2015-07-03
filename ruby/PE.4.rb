# PE #4:

# A palindromic number reads the same both ways. The largest palindrome made from the 
# product of two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome(digits)
	max = (10**digits)-1
	min = (10**(digits-1)) 
	palindromes = []
	first_lst = []
	for i in min..max
		first_lst.push(i)
	end
	second_list = first_lst
	first_lst.each do |x|
		second_list.each do |y|
			product = (x*y)
			product_string = (x*y).to_s
			if product_string == product_string.reverse
				palindromes.push(product) 
			end
		end
	end
	puts palindromes.max  
end 

largest_palindrome(3)