def multiplication_table_from(num)
  # создание массива из полученного, до заданного числа, интервала
  arr1 = (0..num).to_a

    # итерация по полученному массиву
    arr1.each do |i|
      arr2 = []

      # итерация по массиву с получением строки для вывода
      arr1.each { |ii| arr2 << (i+1 * ii) }

      # замена ноля на пустой символ
      if arr2[0] == 0 
          arr2.shift
          arr2.unshift(' ')
      end
      # вывод в консоль полученной строки
      print "#{arr2.join(', ').tr(',', ' ')}\n"
    end   
end

multiplication_table_from(5)