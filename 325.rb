# 325. Дано натуральное число n. Получить все простые делители этого числа.
puts '325. Дано натуральне число N. Отримати всі прості дільники цього числа.'
puts 'Input integer number N:'

n = gets.to_i

dividers = [1]

(2..n).each do |i|
  if (n % i).zero?
    dividers.push(i)
    (2..i).each do |l|
      dividers.delete(i) if (i % l).zero? && (i > l)
    end
  end
end
puts "simple divides numbers for #{n} are:"
print dividers
puts "\n"
