# 561. Дано натуральное число n. Среди чисел 1, ..., n найти все такие, запись которых совпадает с последними цифрами записи их квадрата (как, например, 6^2 = 36, 25^2 = 625 и т. д.).

n=ARGV[0].to_i

#def n_like_square(n)
  square_arr=[]

  (1..n).each do |i|
    square=i*i
    

    i_length=i.to_s.split("").length

    square_num_arr=square.to_s.split("")
    square_num=square_num_arr.drop(square_num_arr.length-i_length)
    square_last_num=square_num.join

    if i==square_last_num.to_i
      puts "#{square} is #{i}*#{i}"
      square_arr.push(i)
    end
    
  end
  
  print square_arr
  puts "\n"
  #return square_arr
#end

#simple tests
#n_like_square(6)
#n_like_square(25)
#n_like_square(100)
