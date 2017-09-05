# 325. Дано натуральное число n. Получить все простые делители этого числа.
require 'prime'

puts '325. Дано натуральне число N. Отримати всі прості дільники цього числа.'
puts 'Input integer number N:'

n = gets.to_i

def n_prime_dividers(n)
  dividers = [1]

  (2..n).each do |i|
    dividers.push(i) if (n % i).zero? && Prime.prime?(i)
  end
  
  puts "simple divides numbers for #{n} are: #{dividers}"
end

n_prime_dividers(n)
