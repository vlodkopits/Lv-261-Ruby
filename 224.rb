# 224. Дано натуральное число n. Получить все его натуральные делители.

def n_devide(n)
  devide_arr = []
  i=1
  while n>=i do
    if n%i==0
      devide_arr.push(i)
      i+=1
    else
      i+=1
    end
  end
  puts "devides numbers for #{n} are:"
  print devide_arr
  puts "\n ===="
  return devide_arr
end

#simple tests
n_devide(10)
n_devide(18)
n_devide(100)
