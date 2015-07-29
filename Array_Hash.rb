a = Array.[](1,2,3,4)
b = Array[1,2,3,4]
c = [1,2,3,4]
puts a
p b
p c

d = Array.new
e = Array.new(3)
f = Array.new(3, "blah")
p d
p e
p f

p f[0].capitalize!
p g = Array.new(3) {"blah"}
p g[0].capitalize!


# *** HASH ***
p '*** HASH *** \n'
p "*** HASH *** \n"
puts '*** HASH *** \n'
puts "*** HASH *** \n"

# создание
p a1 = Hash.[]("flat", 3, "curved", 2)
p a2 = Hash.[]("flat" => 3, "curved" => 2)
p b1 = Hash["flat", 3, "curved", 2]
p b2 = Hash["flat" => 3, "curved" => 2]
# p c1 = {"flat", 3, "curved", 2}
p c2 = {"flat" => 3, "curved" => 2}
p "new"
p d = Hash.new   #пустой
p e = Hash.new(99) #пустой
p f = Hash.new("a"=>3) #пустой
p e["angled"]
p e.inspect
p f["b"]
p f.inspect