#325. Дано натуральное число n. Получить все простые делители этого числа.

n=ARGV[0].to_i

dividers=[1]


(2..n).each do |i|
	if n% i==0
		#puts i #виводимо всі цілочисельні дільники 
		dividers.push(i)
		(2..i).each do |l|
			#puts "= #{i} -- #{l}"
			#puts "== #{i} / #{l} = #{i%l}"
			if (i%l==0) && (i>l)
				#puts "== #{i} / #{l}"
				dividers.delete(i)
			end
		end
	end
end

print dividers

