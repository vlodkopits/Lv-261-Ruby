# Lagrange theoreme
# def lagrange(n)
# 	xyzt_arr = []
# 	result = []
# 	a = Math.sqrt(n)

# 	(0..a).each { |x|	xyzt_arr << x }

# 	combination_arr = xyzt_arr.repeated_permutation(4).to_a

# 	combination_arr.each do |el| 
# 		sum = 0

# 		el.each { |i| sum += i**2 }

# 		result << el if sum == n
# 	end

# 	puts "answer is: #{result}" 
# end

# lagrange(19)

def lagrange(n)
	x = Math.sqrt(n).to_i
	y = Math.sqrt(n - x**2).to_i
	z = Math.sqrt(n - x**2 - y**2).to_i
	t = Math.sqrt(n - x**2 - y**2 - z**2).to_i
	sum = x**2 + y**2 + z**2 + t**2

	sum == n ? (puts " #{x}, #{y}, #{z}, #{t}") : 'Somthing wrong'

end

lagrange(310)
