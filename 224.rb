# 224. Дано натуральное число n. Получить все его натуральные делители.
puts '224. Дано натуральне число N. Отримати всі його натуральні дільники.'
puts 'Input integer number N:'

n = gets.to_i

def n_dividers(n)
  divide_arr = []
  i = 1
  while n >= i
    divide_arr.push(i) if (n % i).zero?
    i += 1
  end
  puts "divides numbers for #{n} are:"
  print divide_arr
  puts "\n"
end

n_dividers(n)
