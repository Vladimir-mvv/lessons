# Array
p "Array"
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

