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

p "***** 2 chast *****"

p " obedinenie | i peresechenie & massivov kak mnogestv"
p [1,2,3,4,5,5,6] | [0,1,2,3,4,5,7]
p [1,2,3,4,5,5,6] & [0,1,2,3,4,5,7]

p "udalenie dublikatov .uniq"
p [1,2,3,4,5,5,6,0,1,2,3,4,5,7].uniq

p "spluschivanie .flatten"
p massiv = [[1,2],[3,4]]
p massiv.flatten
p massiv.flatten.max
p [[2,3,5],["dsf",768],[54,45,1,4,'ert']]
p [[2,3,5],["dsf",768],[54,45,1,4,'ert']].flatten
p [[2,3,5],["dsf",768],[54,45,1,4,'ert',["w","e",1,["sd","v","c","x",9]]]]
p [[2,3,5],["dsf",768],[54,45,1,4,'ert',["w","e",1,["sd","v","c","x",9]]]].flatten

p "transponirovanie"
p "transponirovanie dla strok"
p massiv_2d =[[1,2],[3,4]]
p massiv_2d.map # !!! map
p massiv_2d.map { |massiv| massiv.max} # !!! map

p "transponirovanie dla 2d massiva"
p massiv_2d =[[1,2],[3,4]]
p massiv_2d.transpose.map{ |massiv| massiv.max }

p "razmnojenie mas"
p [111, 222, 333, 444]
p [111, 222, 333, 444] * 2
p massiv = [111, 222, 333, 444]
p massiv + massiv

p "stek"
p massiv = [1,2,3,4,5]
p massiv[massiv.size] = 6
p massiv         # !!!
p massiv[0...-1] # !!!
p massiv         # !!!

p ".push .pop"
p massiv = [1,2,3,4,5]
p massiv.push( 6 )
p massiv         # !!!
p massiv.pop     # !!!
p massiv         # !!!

p "ochered i spisok"
p "[]  []=  +"
p massiv = [1,2,3,4,5]
p massiv = [6] + massiv
p massiv[0]
p massiv
p massiv = massiv[1..-1]
p "*"
p massiv = [1,2,3,4,5]
p massiv.unshift( 6 )
p massiv
p massiv.shift
p massiv

p ".shift .unshift .pop .push"
