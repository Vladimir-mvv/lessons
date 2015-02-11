#08.02.2015
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
  def factorial n
    n > 1 ? n * factorial(n - 1) : 1
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

=begin
def factorial(n)
  if n == 0
    1
  else
    n * factorial(n - 1)
  end
=end

=begin
class Integer
  def factorial_recursive
    self <= 1 ? 1 : self * (self - 1).factorial
  end
  def factorial_iterative
    f = 1; for i in 1..self; f *= i; end; f
  end
  alias :factorial :factorial_iterative
=end

=begin
class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
=end


=begin
class Integer
  def factorial
    return self < 0 ? false : self==0 ? 1 : self.downto(1).inject(:*)
    #Not sure what other libraries say, but my understanding is that factorial of
    #anything less than 0 does not exist.
  end
=end

=begin
class Factorial
  attr_reader :num
  def initialize(num)
    @num = num
  end

  def find_factorial
    (1..num).inject(:*) || 1
  end
end

number = Factorial.new(8).find_factorial
puts number
=end

#0.upto(16) do |n|
#  print(n, "! = ", factorial(n), "\n")
#  print 3.factorial_recursive

#end


#  puts 3.factorial
puts "\n***"
# puts factorial(3)
puts '***'
# puts 3.factorial_iterative
puts '***'
#  puts 3.fact
