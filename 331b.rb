# natural number can be represented as the sum of three squares of integers x^2 + y^2 + z^2
def three_square_sum(n)
  x = Math.sqrt(n).to_i
  y = Math.sqrt(n - x**2).to_i
  z = Math.sqrt(n - x**2 - y**2).to_i
  sum = x**2 + y**2 + z**2

  sum == n ? (puts " #{x}, #{y}, #{z} ") : (puts "We can't find three number")
end

three_square_sum(90)
