=begin
Этот метод возвращает корни квадратного уравнения с заданными параметрами a, b, c
http://ru.wikipedia.org/wiki/%D0%9A%D0%B2%D0%B0%D0%B4%D1%80%D0%B0%D1%82%D0%BD%D0%BE%D0%B5_%D1%83%D1%80%D0%B0%D0%B2%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5

Решения:
d < 0 => 'No roots'
d > 0 => [root1, root2]
d = 0 => root1

Результат округляется до 1 знака после запятой.
=end

=begin
def method_name(a, b, c)
  d = (b.to_f)**2 - 4 * (a.to_f) * (c.to_f)
=end

=begin
def quadratic_equation(a, b, c)
  #TODO код для решения квадратного уравнения
  d = method_name(a, b, c)
  if d < 0
    puts ('No roots')
  end
  if d == 0
    root1 = (-b.to_f) / (2 * (a.to_f))
    puts ("root1 = #{root1}")
  end
  if d > 0
          root1 = (( -b.to_f + d**0.5 ) / (2 * a.to_f))
          root2 = (( -b.to_f - d**0.5 ) / (2 * a.to_f))
          puts ("root1 = #{root1} root2 = #{root2}")

  end
=end

def method_name(a, b, c)
  d = (b**2 - 4 * a * c).to_f
end

def quadratic_equation(a, b, c)
  #TODO код для решения квадратного уравнения
  d = method_name(a, b, c)
  return 'No roots' if d < 0
  return -b / (2 * a.to_f) if d == 0
  [ (( -b + Math.sqrt(d)) / (2 * a)), (( -b - Math.sqrt(d)) / (2 * a)).round(2)]
end
