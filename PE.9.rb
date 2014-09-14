=begin 

A Pythagorean triplet is a set of three natural numbers, a<b<c, for which 
a ** 2 + b ** 2 = c ** 2. 
For example, 3, 4, and 5. 

There exists only one Pythagorean triplet for which a + b + c = 1000. 
Find the product abc. 

=end 

def triplet_product(target_sum) 
  (1..(target_sum / 2)).each do | m |
    (1..m-1).each do | n |
      a, b, c = [ m ** 2 - n ** 2, 2 * m * n, m ** 2 + n ** 2 ] 
      return a * b * c if a + b + c == target_sum
    end
  end
end 

triplet_product(1000)

