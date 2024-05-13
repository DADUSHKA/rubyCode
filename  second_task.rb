def common_divisors(array)
    arr1 = []
    arr2 = []

    array.sort.each do |a|
        b = (2..a - 1)
        c = b.select { |n| (a % n == 0) }
        arr1.concat(c)
    end

    arr1.tally.each { |key, value| arr2 << key if value == array.count }
    arr2
end


p common_divisors([42, 12, 18])
