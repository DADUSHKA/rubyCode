def prime_numbers1(numb1, numb2)
    # выбираем числа в интервале по заданным числам с помощью регулярного выражения
    (numb1..numb2).select { |n| !('1' * n =~ /^1$|^(11+?)\1+$/) }
end 

def prime_numbers2(numb1, numb2)
    # получаем массив из интервала заданных чисел
    arr = (numb1..numb2).to_a
    # получаем новый массив после выбора по заданному условию
    arr.select{ |n| (2..n).count{ |d| (n % d).zero? } == 1 }
end 

p prime_numbers1(11, 20)

p prime_numbers2(11, 20)