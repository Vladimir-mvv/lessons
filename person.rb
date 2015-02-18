=begin

Создать класс Person, который можно проинициализировать таким образом:

person = Person.new('Oksana', '03-12-1991')

Конструктор принимает 2 параметра: name, birthday в формате, указанном выше. 
Для того, чтоб привести данную строку к дате, используем метод Date.parse(birthday).

Задание № 1. Написать метод age, который определяет возраст человека.

Задание № 2. Создать классы Woman и Man - наследники класса Person. Для каждого класса
определить среднюю продолжительность жизни в методе avg_life( Person: 68, Woman: 74, Man: 62).
Написать метод older_than_avg?, который возвращает true или false в зависимости от того, больше
ли возраст данного объекта чем средняя продолжительность жизни для этого класса.

person.older_than_avg?

Задание № 3. Написать метод can_marry?(person), который будет возвращать true или false в
зависимости от того, может ли данный человек вступить в брак с тем, который передается 
параметром. При этом:
 - мужчина может жениться с 18 лет
 - женщина может выйти замуж с 17 лет
 - однополые браки не разрешены
 - если один из брачующихся - объект класса Person, нужно raise TypeError

woman = Woman.new('Alina', '03-12-1990')
man   = Man.new('Ivan', '03-12-1985')
man.can_marry?(woman) #=> true
=end

require 'date'

#TODO здесь должен быть ваш код
class Person
#=begin
 # writer
  def name= (name)
    @name = name
  end
 # reader
  def nane
    @name
  end
  def birthday= (birthday)
    @birthday = birthday
  end
  def birthday
    @birthday
  end
#=end
#attr_reader :name, :age # reader
#attr_writer :name, :age # writer
#attr_accessor :name, :age
  @@people_count = 0
  @@people_age = 0

	def initialize (name, birthday) #Date.parse(birthday))
    @@people_count += 1
    @name = name
		@birthday = birthday
	end
	def age
		d = Date.today
    #d.year - @birthday.year
    #return (Date.new)# - @birthday)
    #return @birthday
    #d2 = @birthday
    d2 = Date.parse(birthday)
    puts "#@name is #{d.year - d2.year} years #{d.month - d2.month} months and #{d.day - d2.day} days old "
    #return d.year - d2.year

  end

end

=begin
person = Person.new('Oksana', '03-12-1991')
person2 = Person.new('Oks', '2015.10.17')
puts person.nane
puts person.birthday
puts person.age

puts person2.nane
puts person2.birthday
puts person2.age
=begin
puts Date.new
d = Date.today
puts d
puts d.year  d.month  d.day  d.to_s
Задание № 2. Создать классы Woman и Man - наследники класса Person. Для каждого класса
определить среднюю продолжительность жизни в методе avg_life( Person: 68, Woman: 74, Man: 62).
Написать метод older_than_avg?, который возвращает true или false в зависимости от того, больше
ли возраст данного объекта чем средняя продолжительность жизни для этого класса.

person.older_than_avg?
=end

class Man < Person
  @@man_count = 0
  @@man_age = 0

  def initialize
    super
    @@man_count += 1
    @@man_age += self.age
  end

  #def self.avg_life

 # end

  def self.avg_life #avg_life( Person: 68, Woman: 74, Man: 62)
    return @@man_age / @@man_count
  end

  def older_than_avg?
    return if self.age > avg_life
  end
end

class Woman < Person
  @@woman_count = 0
  @@woman_age = 0
  def initialize
    super
    @@woman_count += 1
    @@woman_age += self.age
  end

  def self.avg_life #avg_life( Person: 68, Woman: 74, Man: 62)
    return @@woman_age / @@people_count
  end

  def older_than_avg?
    return if self.age > avg_life
  end
end

person = Person.new('Oksana', '03-12-1991')
person2 = Person.new('Oks', '2015.10.17')
puts person.nane
puts person.birthday
puts person.age

puts person2.nane
puts person2.birthday
puts person2.age
=begin
puts Date.new
d = Date.today
puts d
puts d.year  d.month  d.day  d.to_s
=end

