def описати_число(число)
  число ||= 42
  puts "Моє число: #{число}"
  puts знак(число)
end

def знак(число)
  case
  when число > 0
    "Додатне"
  when число < 0
    "Від’ємне"
  else
    "Нуль"
  end
end

описати_число(42)