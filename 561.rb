# 561 task
puts '561. Дано натуральне число N. Серед чисел 1,...,n знайти всі такі, запис яких співпадає з останніми цифрами запису їх квадрата (наприклад , 6^2 = 36, 25^2 = 625 і т. п.).'
puts 'Input integer number N:'

n = gets.to_i

def num_last_square(n)
  square_arr = []

  (1..n).each do |num|
    square = num * num

    num_length = num.to_s.split('').length
    last_num_length = square.to_s.split('').length - num_length
    square_last_num = square.to_s.split('').drop(last_num_length).join

    square_arr.push(num) if num == square_last_num.to_i
  end

  print square_arr
end

num_last_square(n)
