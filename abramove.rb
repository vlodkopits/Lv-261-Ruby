require 'prime'
# module for tasks Abramove
module Abramove
  # task 224
  def n_dividers(n)
    divide_arr = (1..n).select { |num| (n % num).zero? }

    puts "divides numbers for #{n} are: #{divide_arr}"
  end

  # task 325
  def n_prime_dividers(n)
    dividers = (2..n).select { |num| (n % num).zero? && Prime.prime?(num) }

    puts "simple divides numbers for #{n} are: #{dividers}"
  end

  # task 325 ather ver
  def n_prime_dividers_v2(n)
    dividers = (2...n).select { |divider| (n % divider).zero? }
    prime_deviders = dividers.select { |prime| (2...prime).all? { |i| (prime % i) > 0 } }

    puts "simple divides numbers for #{n} are: #{prime_deviders}"
  end

  # task 561
  def num_last_square(n)
    square_arr =
      (1..n).select do |num|
        num_length = num.digits.count
        square_last_num = (num**2).digits.reverse.last(num_length).join
        num == square_last_num.to_i
      end

    puts "answer: #{square_arr}"
  end

  # input method
  def input_method
    print 'Input integer number N: '
    gets.to_i
  end
end
