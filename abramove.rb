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
    puts "divides numbers for #{n} are:"
    print divide_arr
    puts "\n"
  end

  # task 325
  def n_prime_dividers(n)
    dividers = [1]
    (2..n).each do |i|
      if (n % i).zero?
        dividers.push(i)
        (2..i).each do |l|
          dividers.delete_if { |i| (i % l).zero? && (i > l) }
        end
      end
    end
    puts "simple divides numbers for #{n} are:"
    print dividers
    puts "\n"
  end

  # task 561
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
end
