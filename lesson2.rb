# tipi dannih
# Fixnum Bignum Float Array String Hash
# Chisla
p 5
p -12
p 4.5
p 076 # 8 richnoe
p 0b010 # 2  ichnoe
p 0*89  # 16 ichnoe

# logicheskiy
p "|| ->  or"
p "&& -> and"
p "! -> not"
p "^ -> xor"

p "=="
p "!="
p "< > <= >="

# massivi
massiv = ["dkfugh", "654", ["jfg", "dfijgh"], "kjfg 654 dfh 654"]
p massiv

# stroki
# .inspect .to_s
# .gsub .match .scan .split

# p "privet".gsub

p "***"

# associativnie massivi
p "associativnie massivi"
massiv2 = {"da" => "privet", 777 => "klass"}
# "privet" => "ato" ne rabotaet!!!
puts massiv2["da"]
puts massiv2[888] # -> nil
puts massiv2["888"] # -> nil
puts massiv2[777]

p "***"

# diapazoni znacheniy
p "diapazoni znacheniy"
puts 'a'..'z'
puts 'a'...'z' # 'a'..'y'
p 1..100
p 1...100 # 1..99
p 1..100
# .succ следующий элемент

p "***"

# class objets
p "classy and objets"
str = "stroka"
p str
p str.class
p str.class.superclass

p "***"

# chisla
p "chisla celie"
# Integer -> Fixnum (2^31) Bignum (>2^31)
p "123456"
p "123_456"
p1 = 123456
p p1
p2 = 123_456 # odinakovo
p p2

# Float дробные
p "Float drobnie"
d1 = 0.1234e2
d2 = 1234e-2
p d1
p d2
# biblioteka mathn -> рациональніе и комплексніе числа
p "+ - * / % **"
p 1/3 # !!! целые числа!!!
p 2/3 # !!!
p 3/3
p 6.0 + 4
p 6 - 4.0
p 6.0 * 4.0
p 6.0 / 4
p 6.0 % 4
p 6.0 ** 4
p 4 ** 0.5

p "***"

p "porazryadnoe & | ^ << >> ~" # взято с Си
p "6 & 4"
p 6&4
p "6 | 4"
p 6 | 4
p "6 ^ 4"
p 6 ^ 4
p "6 << 4"
p 6 << 4
p "6 >> 4"
p 6 >> 4 # слишком сдвинули
p "~ 4" # только над одним аргументом
p ~4
p "***"
p "+= -= /= *="  # Ci
p "***"
#p "преобразование типов"
p "preob tipov to_f to_i to_s to_a"
p 3.to_f
p 3.14.to_i
p 3.to_s
#p 3.to_a # !!!
#p 7.to_a # !!!

p rand(100)
p rand

srand 123
p Array.new(5) {rand(100)}
p "***"
ch1 = 123456
puts sprintf("%b", ch1) # !
puts ch1.to_s(2)
p "***"

ch2 = 1234
p ch2.to_s.reverse
p "***"

ch3, wN = 1234, 5
p ch3[5]
p "***"

ch4 , ch5 = 123, 456
puts ch4, ch5
ch4, ch5  = ch5, ch4
puts ch4, ch5
p "***"

drob_ch = 3.1446854123
p drob_ch
puts (drob_ch * 100).to_i.to_f / 100
puts sprintf("%.2f", drob_ch).to_f
p "***"

p 365*24 # 1
p 7*24*60 # 2
p (2013-1981)*365*24*60*60 # 3
