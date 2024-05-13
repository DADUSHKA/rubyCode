def meth(num)
  arr1 = (0..num).to_a

    arr1.each do |i|
      arr2 = []

      arr1.each { |ii| arr2 << (i+1 * ii) }

      if arr2[0] == 0
          arr2.shift
          arr2.unshift(' ')
      end
      
      print "#{arr2.join(', ').tr(',', ' ')}\n"
    end   
end

meth(5)