# PE #2:
 
def fibonacci_generator
	lst = [1,2]
	sum_total = 0
	while lst[-1] < 4000000
		new_element = lst[-1]+lst[-2]
    	lst.insert(-1, new_element)
        end
	lst.delete_at(-1)
	lst.each do |x|              
        if x%2==0
            sum_total = sum_total+x
        end
    end
    puts sum_total
end
 
fibonacci_generator
