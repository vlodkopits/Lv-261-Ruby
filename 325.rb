#325. Дано натуральное число n. Получить все простые делители этого числа.

n=ARGV[0].to_i

#def simple_divider(n)

  simple_arr=[1]

  (2..n).each do |i|
    if n%i==0
      puts "#{i} is divider for n"
      (2..i).each do |l|
        if (i%l==0) && (i==2)
          simple_arr.push(i)
        elsif i%l==0
          puts "#{l} is divider for #{i}"
          break
        else
	  #puts "#{i}"
          simple_arr.push(i)
          break
        end
      end
    end
  end

  puts "simple dividers for #{n} are:"
  print simple_arr
  puts "\n"
  #return simple_arr

#end

#simple tests
#simple_divider(6)
#simple_divider(10)
#simple_divider(13)


