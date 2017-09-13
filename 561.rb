# 561 task
puts '561. Дано натуральне число N. Серед чисел 1,...,n знайти всі такі, запис яких співпадає з останніми цифрами запису їх квадрата (наприклад , 6^2 = 36, 25^2 = 625 і т. п.).'
puts 'Input integer number N:'

n = gets.to_i

def num_last_square(n)
  square_arr = (1..n).select do |num|
    num_length = num.digits.count
    square_last_num = (num**2).digits.reverse.last(num_length).join
    num == square_last_num.to_i
  end

  puts "answer: #{square_arr}"
end

num_last_square(n)
