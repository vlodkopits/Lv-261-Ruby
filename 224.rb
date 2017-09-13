# 224. Дано натуральное число n. Получить все его натуральные делители.
puts '224. Дано натуральне число N. Отримати всі його натуральні дільники.'
puts 'Input integer number N:'
n = gets.to_i

def n_dividers(n)
  divide_arr = []
  (1..n).each { |i| divide_arr.push(i) if (n % i).zero? }
  puts "divides numbers for #{n} are: #{divide_arr}"
end

n_dividers(n)
