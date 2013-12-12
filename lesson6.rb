# lesson6
# def   end
def sum(a,b)
  return a + b
end
#p sum (10,2) # !!!
p "summa #{sum(10,2)}"
p "*"

def sum1(a,b)
  a + b
end
p "summa #{sum1(10,2)}"
p "***"

p "znaceniya po umolchaniyu"
def sum2(a,b=5)
  a + b
end
p "summa #{sum2(10,2)}"
p "summa #{sum2(10)}"
p "***"

p "! ?  v metodah"
p "? -> true false v metodah"
p "*"
p arr = []
if arr.length == 0
  p "empty"
else
  p "not empty"
end
p "*"
p ".empty? .any? "

p arr = []
if arr.empty?
  p "empty"
else
  p "not empty"
end
p "*"

p arr = []
if arr.any?
  p "empty"
else
  p "not empty"
end
p "*"

p arr = [1,2,3]
p "array has something" if arr.any?
p "***"

p "! -> menyayut obekt   v metodah"
p string = "   some string     "
p string.strip!
p string
p "***"

p "metodi prisvoeniya = + - *"
p " = prisvoenie svoystva obektu"

class Bottle
  def capacity
    @capacity
  end
  def capacity=(new_cap)
    @capacity = new_cap
  end
end

bytilka = Bottle.new
p bytilka.capacity = 10 # preobr v capacity=
p "***"

p "* / ^ .... < >  metodi"
class Venik
  def + (another)
    12 + another
  end
end

telega = Venik.new
p telega + 10
p "*"

p t = Time.now
p t + 60

require 'date'
p d = Date.today
p d + 1
p "***"

p "pogloscenie argumentov"
def sum(*members)
  members[0] + members[1]
end

p sum(10, 2)

p "*"

def sum(*members)
  initial = 0
  members.collect{ |item| initial += item}
  initial
end

p sum(10, 2)
p sum(10, 2 ,12,34)
p "*"

p array_to_sum = [12,14,15,16]
p sum(*array_to_sum)
p "***"
p "  "
p "***** Bloki *****"
p "  "
p "blok - anonim metod"
p "do...end ili { }"
p "*"
p (1..3).map(){ "Bay" }
p (1..3).map{ "Bay" }
p "*"
p (1..3).map(){ word = "Bay"; word }
# p word # oshibka!!! word - lokal dlya bloka
p "***"
p "do end"

puts (1..3).map do          # otrabotal no vivel!!!!
  rand_numb=rand()
  "Bay - rand numb!\n"+
  rand_numb.to_s
end
p "***"

p (1..3).map do | index |
     index
  end
p "*"
p "***"
p "metodi s blokami   yield"
def ras_i_dva
  yield "i raz"            # ne ponyal !!!
  yield "i dva"
end

ras_i_dva { | slova | p "!!!  " + slova }
p "*"
p "& - blok obyazatelen"

def twice(&block)
  yield "i raz"
  yield "i dva"
end
# p twice #  obyazatelen blok
p "*"

def func(a, &block)
  return a if a
  yield "i raz"
  yield "i dva"
end

p func true
#p func false # net rezult
p "***"

def func(a, &block)
  return a if a
  block ||=lambda{ | slova | p "!!! " + slova}
  block.call("i raz")
  block.call("i dva")
end
p func true
p func false
func(false) { | slova | puts "???  " + slova }  # ne srabotalo
p "***"

# def writing_to(file, &block)
#  File.open(file, 'w', &block)
#end

p "***"
class Array     # !!!
  def size( &block)
    block ? inject( 0 ){ | count, elem | ( yield elem ) ? count + 1 : count }
    : length
  end
end

p mas = [1,2,3,4,5,6,7]
p mas.size{ | i | (i%2).zero? }
p " "
p "***"
p '   '

p rr = 3 + rand( 4 )

class Range
  def rand
    first + Kernel.rand( last - first + ( exclude_end? ? 0 : 1 ) )
  end
end
p (3..6).rand
p Array.new(100) { (3..6).rand }.uniq.sort
#p Array.new(100){ ('a'..'z').rand }              # !!!
p "***"

class Array
  def rand
    self[ Kernel.rand( size )]
  end
end
class Range
  def rand
    to_a.rand
  end
end

p Array.new(100){ ('a'..'z').rand }
p '***'
