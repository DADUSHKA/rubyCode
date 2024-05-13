def prime_numbers1(numb1, numb2)
    (numb1..numb2).select { |n| !('1' * n =~ /^1$|^(11+?)\1+$/) }
end 

def prime_numbers2(numb1, numb2)
    arr = (numb1..numb2).to_a

    arr.select{ |n| (2..n).count{ |d| (n % d).zero? } == 1 }
end 

p prime_numbers1(11, 20)

p prime_numbers2(11, 20)