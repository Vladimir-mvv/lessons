=begin
В ruby мы имеем открытые классы. Это значит, что мы можем их расширять своими методами.

Задача: расширить класс Fixnum методом factorial, который будет возвращать факториал
заданного числа.

Примеры:
3.factorial #=> 6
0.factorial #=> 1
-5.factorial #=> nil
=end

class Fixnum
  #TODO создать метод factorial для подсчета факториала заданного числа. 
  #внутри метода заданное число будет доступно в self

=begin
  def factorial(n)
    nil if n<0
    if n==0
      1
    else
      n*factorial(n-1)
    end
=end

=begin
#  def factorial1 n
#    n > 1 ? n * factorial1(n - 1) : 1
=end

=begin
  def factorial n
    (1..n).inject(:*) || 1
=end

=begin
  def factorial n
    f = 1
    for i in 2..n
      f *= i
    end
    f
=end

  def factorial(n)
    if n == 0
      1
    else
      n * factorial(n - 1)
    end
  end



    def fact
      if self == 0 #|| self == 1
        1
      else
      (1..self).reduce(:*) #|| 1
      end
    end


#  0.upto(16) do |n|
#    print(n, "! = ", factorial(n), "\n")
#  end

#  puts 3.factorial
  puts '***'
#  puts factorial(3)
  puts '***'
  #puts 3.factorial
  puts 0.fact

end


