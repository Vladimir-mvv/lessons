class Fixnum
  def factorial
    return if self < 0
    #[*1..self].inject(1, :*)
    #[*1..self].reduce(1, :*)
    [*1..self].inject(1) { |res, el| res *= el }
  end
end

puts 3.factorial

require "unicode"

class String
  def downcase
    Unicode::downcase(self)
  end

  def palindrom?
    self.downcase_chars == self.downcase_chars.reverse
  end

  def anagram?(other_str = '')
    self.downcase_chars.chars.sort == other_str.downcase_chars.chars.sort
  end

  def downcase_chars
    self.downcase.gsub(/[^[:alnum:]]/,'')
  end

end

puts 'aaaa aaa aaa'.palindrom?
puts 'aaaa aaa aaa'.anagram?

puts :ertr.class
puts :ertr.object_id
puts :ertr.object_id
puts :ertr.object_id
puts 'oksana'.object_id
puts 'oksana'.object_id
puts 'oksana'.object_id

a = [{name: 'oksana', age: '22'}, {name: 'oksana', age: '22'}, {name: 'oksana', age: '22'}]
puts a
b = [{:name => 'oksana', :age=> '22'}, {:name=> 'oksana', :age=> '22'}, {:name=> 'oksana', :age=> '22'}]
puts b
c = [{'name' => 'oksana', 'age' => '223'}, {name: 'oksana', age: '224'}, {name: 'oksana', age: '224'}]
puts c
d = [{'name' => 'oksana', 'age' => '22'}, {'name' => 'oksana', 'age' => '22'},{'name' => 'oksana', 'age' => '22'}]
puts d
# error
# # e = [{'name' 'oksana', 'age' '22'}, {'name' => 'oksana', 'age' => '22'},{'name' => 'oksana', 'age' => '22'}]
#puts e

puts "*** exceptions ***"

#puts 'fghjgjh'.hello

def hello
  puts 'hi, everyone'
#  raise 'An error has occured'
  puts 'this is Oksana'
end

puts hello

def inverse(x)
  raise ArgumentError, 'Argument is not numeric' unless x.is_a? Numeric
  1.0/x
end

puts inverse(2)
#puts inverse('not a number')

class MyException < Exception

end

def example
  2 + nil rescue 3
end

puts example

def example2
  begin
    2 + nil
  rescue TypeError => e
    puts e.message
  end

end

puts example2

def example3
  begin
    raise 'error'
  rescue
    puts 'hi'
  ensure     # vipolnyaetya vsegda
    puts 'hello'
  end
end

puts example3

puts "*** methods ***"

def some_method(value='default', arr=[])
  puts value
  puts arr.length
end

puts some_method('something')

def calculate_value(x,y,*otherValues)
  puts otherValues
end

puts calculate_value(1,2,'a','b','c')

arr = ['a','b','c']
calculate_value(*arr)

def accepts_hash( var )
    print "got: ", var.inspect
  # will print out what it received
end

puts accepts_hash arg1: 'giving arg1', argN: 'giving argN'

def foo(a, *b)# , **c)  ruby 2.0
 #[a, b, c]
  [a, b]
end
puts  foo 10 #=> [10, [], {}]
puts foo 10, 20, 30 #=> [10, [20, 30], {}]
puts  foo 10, 20, 30, d: 40, e: 50 #=> [10, [20, 30], {:d=>40, :e=>50}]
puts foo 10, d: 40, e: 50 #=> [10, [], {:d=>40, :e=>50}]

puts '*** class ***'

class Person
  def name=(name)
    @name = name
  end
  def age=(age)
    @age = age
  end
  def name
    @name
  end
  def age
    @age
  end
end

pasha = Person.new #=> #<Person:0x9841238>
puts pasha.name = "Pavel" #=> "Pavel"
pasha.name #=> "Pavel"
pasha.age = 15 #=> 15
puts pasha.age #=> 15
# ili
class Person
  attr_reader :name, :age
  attr_writer :name, :age
end
# ili
class Person
  attr_accessor :name, :age
end

# constructor
class Person
  attr_accessor :name, :age
  def initialize(name, age)
       @name = name
       @age = age
  end
end

# person = Person.new # ArgumentError: wrong number of arguments (0 for 2) # error!!!
 person = Person.new('Oksana', 22) #=> #<Person:0x9cdb71c @name="Oksana", @age=22>
puts person.name #=> "Oksana"

class Person
  attr_accessor :name, :age
  def initialize(name = nil, age = nil)
       @name = name
       @age = age
  end
end

person = Person.new

class Person
  @@people_count = 0 # peremennaya classa
  attr_accessor :name, :age
  def initialize(name = nil, age = nil)
       @name = name
       @age = age
    @@people_count += 1
  end
  def self.people_count  # metod classa
    @@people_count
  end
end

puts Person.people_count # => 0
person = Person.new #=> #<Person:0x9d1bc40 @name=nil, @age=nil>
puts Person.people_count #=> 1
person1 = Person.new #=> #<Person:0x9d199cc @name=nil, @age=nil>
puts Person.people_count #=> 2

#● local name
#● instance @name
#● class @@name
#● global $name

=begin
Access control
● public
✔ can be called by everyone
✔ a class's instance methods are public by default
● protected
✔ can be invoked only by objects of the defining 
class and its subclasses
● private
✔ the receiver is always self
✔ the initialize method is always private

In Ruby, public, private and protected apply only to 
methods. Instance and class variables are encapsulated 
and effectively private, and constants are effectively 
public. There is no way to make an instance variable 
accessible from outside a class (except by defining an 
accessor method). And there is no way to define a constant 
that is inaccessible to outside use.

=end
puts '*** nasledovanie ***'
class Woman < Person
end
class Man < Person
end

man = Man.new('Oleg', 22) #=> #<Man:0x9a5351c @name="Oleg", @age=22>
puts man.name #=> "Oleg"

class Man
  def name
    @name.upcase
  end
end
puts man.name #=> "OLEG"

puts man.class.ancestors #=> [Man, Person, Object, Kernel, BasicObject]

puts '*** super ***'
class Man < Person
  def name
    puts 'hi there'
    super    # vizovetsya metod s takim je nazvaniem ot basovogo classa
  end
end

class Man < Person
  def initialize(name = nil, age = nil)
    super  # parametry !!!
  end
end
# man = Man.new('Oleg', 22) # parametry !!!
puts man

class Man < Person
  def initialize(name = nil, age = nil)
    super(name)
  end
end
# man = Man.new('Oleg', 22) # parametry !!!
man = Man.new('Oleg')
puts man
