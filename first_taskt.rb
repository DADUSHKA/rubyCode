def first(arg)
  first_word = " компьютер"
  second_word = " компьютеров"

  value = arg.to_s

  string = if value.end_with?("11")
             value + second_word
           elsif value.end_with?("1")
             value + first_word
           else
             value + second_word
           end

  string
end

 p first(31)
