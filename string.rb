=begin
Расширить класс String следующими методами:

1. palindrome?
  проверяет, является ли заданная строка палиндромом
2. anagram?(other_str)
  проверяет, является ли заданная строка анаграммой к другой строке(other_str)
=end

#используем unicode для корректного перевода кирилицы в downcase
require "unicode"

class String

  #переопределяем метод downcase для строки. теперь при вызове 'Привет'.downcase
  #будет вызываться переопределенный метод
  def downcase
    Unicode::downcase(self)
  end

 #TODO методы для палиндрома и анаграммы должны быть тут
=begin
  def palindrom?
    if self.downcase.strip == self.downcase.strip.reverse
      true
    else
      false
    end
  end
=end

  def palindrom?
    self.downcase.strip == self.downcase.strip.reverse
  end


  def anagram?(other_str)
    #self.downcase.strip
    puts a = self.downcase
    puts b = a.strip
    puts c = [*b].sort
    puts c.sort

    puts a1 = other_str.downcase
    puts b1 = a1.strip
    puts c1 = [*b1.strip].sort
    puts c1.sort

    #return true if [*self.downcase.strip].sort == [*other_str.downcase.strip].sort
    return true if c.sort == c1.sort

  end

#  puts 'privet'.palindrom?

end
#puts "tet tttaaat".palindrom?
#puts 'tet'.palindrom?

puts "TeT a tttaaat".anagram?("rrrrrrrrrrrrttttttttt")
puts 'TET a TET'.anagram?("tte")
puts 'AbC DfGh IjK'.anagram?("kJi HgFd cBa")