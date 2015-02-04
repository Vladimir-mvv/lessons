=begin
Этот метод возвращает корни квадратного уравнения с заданными параметрами a, b, c
http://ru.wikipedia.org/wiki/%D0%9A%D0%B2%D0%B0%D0%B4%D1%80%D0%B0%D1%82%D0%BD%D0%BE%D0%B5_%D1%83%D1%80%D0%B0%D0%B2%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5

Решения:
d < 0 => 'No roots'
d > 0 => [root1, root2]
d = 0 => root1

Результат округляется до 1 знака после запятой.
=end

def quadratic_equation(a, b, c)
  #TODO код для решения квадратного уравнения
  d = b**2 - 4*a*c
  if d < 0
    puts ('No roots')
  end
  if d == 0
    root1 = -b / 2*a
    puts ("root1 = {#root1}")
  elsif
          root1 = (( -b + d**0.5 ) / 2 * a )
          root2 = (( -b - sqrt(d) ) / 2*a)
          puts ("root1 = {#root1} root2 = {#root2}")

  end
end

