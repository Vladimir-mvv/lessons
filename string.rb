=begin
Расширить класс String следующими методами:

1. palindrome?
  проверяет, является ли заданная строка палиндромом
2. anagram?(other_str)
  проверяет, является ли заданная строка анаграммой к другой строке(other_str)
=end

#используем unicode для корректного перевода кирилицы в downcase
#require "unicode"

class String

  #переопределяем метод downcase для строки. теперь при вызове 'Привет'.downcase
  #будет вызываться переопределенный метод
  def downcase
    Unicode::downcase(self)
  end

 #TODO методы для палиндрома и анаграммы должны быть тут

  def palindrom?
    if other_str == other_str.reverse
      true
    else
      false
    end
  end

#  def anagramma?(other_str)  end

  puts 'privet'.palindrom?

end
