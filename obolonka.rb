require './abramove.rb'
include Abramove

# terminal interface for communicated with user
class Obolonka
  def start
    puts 'Hello!'
    puts 'Please choose your task:'
    puts '1. Task 224'
    puts '2. Task 325'
    puts '3. Task 561'

    n = gets.to_i

    case n
    when 1
      puts '224. Дано натуральне число N. Отримати всі його натуральні дільники.'
      puts 'Input integer number N:'
      arg = gets.to_i
      n_dividers(arg)
    when 2
      puts '325. Дано натуральне число N. Отримати всі прості дільники цього числа.'
      puts 'Input integer number N:'
      arg = gets.to_i
      n_prime_dividers(arg)
    when 3
      puts '561. Дано натуральне число N. Серед чисел 1,...,n знайти всі такі, запис яких співпадає з останніми цифрами запису їх квадрата (наприклад , 6^2 = 36, 25^2 = 625 і т. п.).'
      puts 'Input integer number N:'
      arg = gets.to_i
      num_last_square(arg)
    else
      puts 'Enter valid number'
    end
  end
end

run = Obolonka.new
run.start
