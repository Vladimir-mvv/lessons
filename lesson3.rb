#coding utf-8

# massivi
p "3 sposoba sozdaniya massivov"
p [1,2,3,4,5,6,7]
p Array.new(7) { |index| index + 1 }
p (1..7).to_a # est ewo sposobi sozdaniya massivov

p "***"
# diapazoni
p (1..10).to_a
p ('a'..'z').to_a

p massiv = ['a','b','c','d','e']
p massiv[massiv.size - 2] # "d"
p massiv[-2]     # "d"
p massiv[1..-2]  # b c d
p massiv[1...-1] # b c d
p "***"

# 2 merniy massiv
p [[1],[2,3],[4]]
p [[3,4],[1,2]]
p [["ffff","ddddd"],["xxxxx","hhhh"]]
p [["qqqq","rrrrr"], [111,["vvvv", "zz"]]]
p "***"

# metodi rab s mas
p "metodi rab s mas"
p [1, 'ertty', 3, "ghjjkjk", 5,6, 'wetrty',2 ,5].size # 9
p massiv = [1, 'ertty', 3, "ghjjkjk", 5,6, 'wetrty',2 ,5]
p massiv.size # 9
p "***"

p "min max"
# p ['у','попа','была','собака']
p ['y', 'popa', 'bila', 'sobaka']
p ['y', 'popa', 'bila', 'sobaka'].max
p ['y', 'popa', 'bila', 'sobaka'].max_by{ |elem| elem.size}
p ['y', 'popa', 'bila', 'sobaka']
p ['y', 'popa', 'bila', 'sobaka'].min
p ['y', 'popa', 'bila', 'sobaka'].min_by{ |elem| elem.size}
p "***"

p "sort"
p ['y', 'popa', 'bila', 'sobaka']
p ['y', 'popa', 'bila', 'sobaka'].sort
p ['y', 'popa', 'bila', 'sobaka'].sort_by {|elem| elem.size }
p ['y', 'popa', 'bila', 'sobaka'].sort_by {|el| el.size }

p "revers"
p ['y', 'popa', 'bila', 'sobaka']
p ['y', 'popa', 'bila', 'sobaka'].sort.reverse
p ['y', 'popa', 'bila', 'sobaka'].sort_by {|elem| elem.size }.sort
p "***"

p " +  - "
p [1,2,3,4] + [5,6] + [7,8]
p [1,1,2,2,3,3,3,4,5] - [1,2,4]
