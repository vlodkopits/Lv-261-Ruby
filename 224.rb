# 224. Дано натуральное число n. Получить все его натуральные делители.

n=ARGV[0].to_i
#def n_divide(n)
  divide_arr = []
  i=1
  while n>=i do
    if n%i==0
      divide_arr.push(i)
      i+=1
    else
      i+=1
    end
  end
  puts "divides numbers for #{n} are:"
  print divide_arr
  puts "\n"
  #return divide_arr
#end

#simple tests
#n_divide(10)
#n_divide(18)
#n_divide(100)
