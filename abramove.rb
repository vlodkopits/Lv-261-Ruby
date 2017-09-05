require 'prime'
# module for tasks Abramove
module Abramove
  # task 224
  def n_dividers(n)
    divide_arr = []
    (1..n).each { |i| divide_arr.push(i) if (n % i).zero? }
    puts "divides numbers for #{n} are: #{divide_arr}"
  end

  # task 325
  def n_prime_dividers(n)
    dividers = [1]
    (2..n).each { |i| dividers.push(i) if (n % i).zero? && Prime.prime?(i) }
    puts "simple divides numbers for #{n} are: #{dividers}"
  end

  # task 561
  def num_last_square(n)
    square_arr = []
    (1..n).each do |num|
      num_length = num.to_s.split('').length
      square_last_num = (num**2).to_s.split('').last(num_length).join
      square_arr.push(num) if num == square_last_num.to_i
    end
    puts "answer: #{square_arr}"
  end

  # input method
  def input_method
    print 'Input integer number N: '
    gets.to_i
  end
end
