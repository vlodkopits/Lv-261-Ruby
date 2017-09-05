# module for tasks Abramove
module Abramove
  # task 224
  def n_dividers(n)
    divide_arr = []
    i = 1
    while n >= i
      divide_arr.push(i) if (n % i).zero?
      i += 1
    end
    puts "divides numbers for #{n} are: #{divide_arr}"
  end

  # task 325
  def n_prime_dividers(n)
    dividers = [1]

    (2..n).each do |i|
      dividers.push(i) if (n % i).zero? && Prime.prime?(i)
    end

    puts "simple divides numbers for #{n} are: #{dividers}"
  end

  # task 561
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

  #input method
  def input_method()
    print 'Input integer number N:'
    arg = gets.to_i
  end
end
