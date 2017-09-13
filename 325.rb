# 325. Дано натуральное число n. Получить все простые делители этого числа.
require 'prime'

puts '325. Дано натуральне число N. Отримати всі прості дільники цього числа.'
puts 'Input integer number N:'

n = gets.to_i

def n_prime_dividers(n)
  #dividers = (1..n).select { |prime| (n % prime).zero? && ((2...prime).all? { |i| (prime % i) > 0 }) }
  ##(1..10).select { |x| (1..x).select { |y| x % y == 0 }.size==2 }
  dividers = (2...n).select { |divider| (n % divider).zero? }
  prime_deviders = dividers.select { |prime|  (2...prime).all? { |i| (prime % i) > 0 } }

  puts "simple divides numbers for #{n} are: #{prime_deviders}"
end

n_prime_dividers(n)
