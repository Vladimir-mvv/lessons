# Array
p "*** Array ***"
#p [[1, 2, 3], 10, 3.14, "this is a string", barnet("pebbles")]
p [[1, 2, 3], 10, 3.14, "this is a string"]
p Array.new
p 'Array.new(3)'
p Array.new(3)

p 'Array.new(3, true)'
p Array.new(3, true)

p 'Array.new(4) {Hash.new }'
p Array.new(4) {Hash.new }

p 'Array({:a => "a", :b => "b" })'
p Array({:a => "a", :b => "b" })

p '%w(monkey fish lion dog cat #{Time.now})'
p %w(monkey fish lion dog cat #{Time.now})

p '%W(monkey fish lion dog cat #{Time.now})'
p %W(monkey fish lion dog cat #{Time.now})

# Accessing elements
p "Accessing elements"

#p languages = 'Ruby', 'JavaScript', 'Python', 'PHP' # ne otrabotalo kak massiv
p languages = ['Ruby', 'JavaScript', 'Python', 'PHP']
p 'languages[0]'
p languages[0]

p 'languages.at(0)'
p languages.at(0)

p 'languages[1]'
p languages[1]
p 'languages[4]'
p languages[4]

p 'languages[2..3]'
p languages[2..3]

p 'languages[2...3]'
p languages[2...3]

p 'languages.take(3)'
p languages.take(3)

p 'languages[1] = "CoffeeScript"'
p languages[1] = "CoffeeScript"
p languages

# Adding items
p "Adding items"

p languages = ['Ruby', 'JavaScript', 'Python', 'PHP']
p "push"

p 'languages.push("Closure")'
p languages.push("Closure")

p "push operator"
p languages << "Haskell"

p 'languages.unshift("C++")'
p languages.unshift("C++")

p 'languages.insert(3, "CoffeeScript")'
p languages.insert(3, "CoffeeScript")
p 'languages.insert(4, "Haml", "Sass")'
p languages.insert(4, "Haml", "Sass")

# Removing items
p "Removing items"
p languages

p 'languages.pop'
p languages.pop
p languages

p 'languages.shift'
p languages.shift
p languages

p 'languages.delete_at(2)'
p languages.delete_at(2)
p languages

p 'languages.delete("PHP")'
p languages.delete("PHP")
p languages

p languages = ['Ruby', 'JavaScript', "PHP", 'Python', 'PHP']
p languages.uniq
p languages

#p "Otaining information"
p "Otaining information"

p languages = ['Ruby', 'JavaScript', "PHP", 'Python', 'PHP']
p "count: length count size "
p languages.length
p languages.count
p languages.size

p 'languages.empty?'
p languages.empty?

p 'languages.include?(Ruby)'
p languages.include?('Ruby')

# "Concatination"
p "*** Concatination ***"
p days1 = ["Mon", "Tue", "Wed"]
p days2 = ["Thu", "Fri", "Sat", "Sun"]
p days1 + days2
p days2 + days1

p days1 = ["Mon", "Tue", "Wed"]
p days1 << "Thu" << "Fri" << "Sat" << "Sun"

# Operations
p "*** Operations ***"

p os = ["Fedora", "SUSE", "Red Hat", "MacOS", "Windows", "Ubuntu"]
p linux_os = ["SUSE", "Red Hat", "Ubuntu", "Fedora"]

# Union
p " | Union "
p os | linux_os

# Intersection
p " & Intersection "
p os & linux_os

# Difference
p " - Difference "
p os - linux_os

# Addition
p " + Addition "
p linux_os + ["Debian", "Gentoo"]

# Multiplication
p " * Multiplication "
p linux_os * 2

p linux_os * ", "

# Iterators
p "*** Iterators ***"

p " each "
p a = [ "a", "b", "c"]
p a.each {|x| print x, " -- "}

p " each_index "
p a = [ "a", "b", "c"]
p a.each_index {|x| print x, " -- "}

p " each_with_index "
p a = [ "a", "b", "c"]
p a.each_with_index {|item, index| puts "[#{index}] => #{item}"}

# Hash
p "*** Hash ***"
p "{ :font_size => 10, :font_family => 'Arial'}"
 { :font_size => 10, :font_family => "Arial"}
p "{ font_size: 10, font_family: 'Arial'}"
 { font_size: 10, font_family: "Arial"}

p Hash.new
p h = Hash.new("Default value")
p h['key']

p h = Hash.new{ |hash, key| hash[key] = "Default value: #{key}"}
p h['key']

p Hash.new
p h.default = "Default value"
p h['key']

# Removing items
p "*** Removing items ***"
p " * delete *"
p h ={ "a" => 100, "b" => 200 }
p h.delete("a")
p h.delete("z")

p " * delete_if *"
p h ={ "a" => 100, "b" => 200, "c" => 300 }
p h.delete_if{ |key, value| value > 100}
p h

p " * keep_if *"
p h ={ "a" => 100, "b" => 200, "c" => 300 }
p h.keep_if{ |key, value| value > 100}
p h

p " * shift *"
p h ={ 1 => "a", 2 => "b", 3 => "c" }
p h.shift
p h

# Useful methods
p "*** Useful methods ***"
p " * each *"
p h ={ "a" => 100, "b" => 200 }
p 'h.each { |key, value| puts "#{key} is #{value}" }'
h.each { |key, value| puts "#{key} is #{value}" }
#p a is 100
#p b is 200

p " * each_key *"
p h ={ "a" => 100, "b" => 200 }
p 'h.each_key { |key| puts key }'
h.each_key { |key| puts key }

p " * each_value *"
p h ={ "a" => 100, "b" => 200 }
p 'h.each_value { |value| puts value }'
h.each_value { |value| puts value }

p " * key? *"
p h ={ "a" => 100, "b" => 200 }
p h.key?("a")
p h.key?("z")

p " * value? *"
p h ={ "a" => 100, "b" => 200 }
p h.value?(100)
p h.value?(999)

p " * keys *"
p h ={ "a" => 100, "b" => 200 }
p h.keys

p " * values *"
p h ={ "a" => 100, "b" => 200, "c" => 300 }
p h.values

p " * values_at *"
p h ={ "a" => 100, "b" => 200, "c" => 300 }
p h.values_at("a", "c")

p " * length *"
p h ={ "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
p h.length
p h.delete("a")
p h.length

p " * merge *"
p h1 ={ "a" => 100, "b" => 200 }
p h2 ={ "b" => 254, "c" => 300 }
p h1.merge(h2)

p " * select *"
p h ={ "a" => 100, "b" => 200, "c" => 300 }
p h.select { |key, value| value > 100 }

# Range
p "*** Range ***"
p 1..18
p (1..10).to_a
p 1...18
p (1...18).to_a
p ('a'..'e').to_a

# Time
p "*** Time ***"
p 't = Time.now'
p t = Time.now
p 't.year'
p t.year
p 't.month'
p t.month
p 't.day'
p t.day
p 't.wday'
p t.wday
p 't.yday'
p t.yday
p 't.hour'
p t.hour
p 't.min'
p t.min
p 't.sec'
p t.sec
p 't.zone'
p t.zone
p 't.strftime'
p t.strftime("%Y-%m-%d %H:%M:%S")

