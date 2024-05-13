def string_from_number(arg)
  first_word = " компьютер"
  second_word = " компьютеров"

  # число в строку
  value = arg.to_s

  string = if value.end_with?("11")  # заканчивается ли указанная строка заданным окончанием
             value + second_word
           elsif value.end_with?("1")
             value + first_word
           else
             value + second_word
           end

  string
end

 p string_from_number(31)
