# 561. Дано натуральное число n. Среди чисел 1, ..., n найти все такие, запись которых совпадает с последними цифрами записи их квадрата (как, например, 6^2 = 36, 25^2 = 625 и т. д.).
puts '561. Дано натуральне число N. Серед чисел 1,...,n знайти всі такі, запис яких співпадає з останніми цифрами запису їх квадрата (наприклад , 6^2 = 36, 25^2 = 625 і т. п.).'
puts 'Input integer number N:'

n = gets.to_i

def num_last_square(n)
  square_arr = []

  (1..n).each do |i|
    square = i * i

    i_length = i.to_s.split('').length

    square_num_arr = square.to_s.split('')
    square_num = square_num_arr.drop(square_num_arr.length - i_length)
    square_last_num = square_num.join

    if i == square_last_num.to_i
      puts "#{square} is #{i}*#{i}"
      square_arr.push(i)
    end
  end

  print square_arr
  puts "\n"
end

num_last_square(n)
