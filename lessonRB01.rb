age =5
case age
  when 0..12
    puts "child"
  when 13..18
    puts "teen"
  else
    puts "adult"
end
puts '*****'

i = 0
loop do
  i += 1
  break if i == 10
end
puts i
puts "*****"

for i in 1..10
  print i
end
puts "\n*****"

i = 0
while i < 10
  i += 1
end
puts i
puts "*****"

i += 1 while i < 10
puts i
puts "\n*****"

i = 0
until i == 10
  i += 1
end
puts i
puts "\n*****"

i += 1 until i == 10
puts i
puts "\n*****"

def say_hi
  yield
end
say_hi {puts 'Hi, Oks'}
# say_hi       error if no block
puts "*****"

def say_hihi
  yield if block_given?  # esli block zadan to podstavit
end
#say_hihi {puts 'Hi, Oks hihi'}
say_hihi   # rabotaet!!!
puts "*****"

def say_hi(name)
  yield name
end
#say_hi("Oks") {|n| puts "Hi, Oks my dear #{ n }"}
# say_hi      # error if no param in block
puts "*****"

5.times {|i| print i }
puts "\n***** times { }"

5.times do |i|
  print i
end
puts "\n***** times do end"

1.upto(5) { |i| print i }
puts "\n***** upto"

10.downto(5) do |el|
  print el
end
puts "\n***** downto"

