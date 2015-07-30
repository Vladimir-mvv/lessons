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
p d = Hash.new   #пустой {}
p e = Hash.new(99) #пустой {}
p f = Hash.new("a"=>3) #пустой {}
p e["angled"] # 99
p e.inspect # {}
p f["b"] #{"a"=>3}
p f.inspect # {}

p "default="
p a = Hash.new("missing") # default object -> string "missing"
p a ["hello"] # "missing"
p a.default= "nothing"
p a ["hello"] # "nothing"
p a["good"] << "bye" # "nothingbye"
p a.default          # "nothingbye"

p "fetch"
p a = {"flat" => 3, "curved" => 2, "angled" => 5}
#p a.fetch("pointed") # IndexError
p a.fetch("curved", "na") # 2
p a.fetch("x", "na") # na
p a.fetch("flat") {|x| x.upcase} # 3
p a.fetch("pointed") {|x| x.upcase} # POINTED

p "dostup [] []= store"
p a={}
p a["flat"] = 3
p a.[]=("curved", 2)
p a
p a.store("angeld", 5)
p a
#----------------------
p "--------"
#----------------------
