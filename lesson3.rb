#coding utf-8
# http://www.ruby-doc.org/core-2.0.0/Array.html
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

# logicheskie metodi
p "logicheskie metodi   ?"
p massiv = [1,2,3,4,5]
p massiv.methods.grep(/\?$/)
p massiv.methods.grep(/\?$/).sort
p "est li element ?"
p massiv = [1,2,3,4,5,6,7,5]
p iskat = 5
p massiv.find_all{ |elem| elem == iskat}
p massiv.find_all{ |elem| elem == iskat}.size != 0
# .include
p massiv = [1,2,3,4,5,6,7,5]
p iskat = 5
p massiv.include?(iskat)
p "*"
p massiv = ["raz","dva","tri"]
p massiv.include?("elka")
p "pustoy massiv ?"
p pustoy_massiv = []
p polny_massiv = [1,2,3,4,5,6,7]
p pustoy_massiv == []
p polny_massiv == []
p pustoy_massiv.size == 0
p polny_massiv.size == 0
p pustoy_massiv.empty?
p polny_massiv.empty?

p "*** iteratori ***"
p ".map"
p massiv = ["raz","dva","tri"]
p massiv.map { 0 }
p "*"
p massiv = [1,2,3,4,5,6,7,5]
p massiv.map { |elem| elem ** 2}
p massiv
p "*"
p massiv = [1,2,3,4,5,6,7,5]
p massiv = massiv.map { |elem| elem ** 2}
p massiv
p "*"
p ".find_all"
p massiv = [1,2,3,4,5,6,7]
p massiv.find_all { |elem| elem %2==0 }
p massiv.find_all { |elem| (elem%2).zero? }
p massiv.find_all { |elem| (elem&1).zero? } # ??? !!!
p massiv.find_all { |elem| (elem[0]).zero? }  # ??? !!!

p "summ proizved agregaciya"
p "summ proizved -> .inject"
p massiv = [1,2,3,4,5]
p massiv.inject( 0 ) { |rezult, elem| rezult + elem}
p massiv.inject( 0 ) { |jksdfgh_rezult, jskdfghs_elem_djfshg| jksdfgh_rezult + jskdfghs_elem_djfshg}
p massiv = [1,2,3,4,5]
p massiv.inject( 1 ) { |rezult, elem| rezult * elem}
p "***"

p"razbienie na 2"
p ".patition"
p massiv2 = [1,2,3,4,5,6,7,8,9]
p massiv2.partition{ |x| (x%3).zero?}
p "*"
p massiv = [1,2,3,4,5,6,7,8,9]
#p a, b = massiv2.partition{ |x| (x%3).zero? } # !!! ---
#p (a, b = massiv2.partition{ |x| (x%3).zero? }) # !!! ----
one, two = massiv2.partition{ |x| (x%3).zero? } # !!!
p one
p two
p "*"

p "logicheskie iteratori .all? .any?"
p "do versii 1.8"
p "udovletvoryaet li vse elementi usloviyu ?"
p massiv = [1,2,2,3,4,5,6,7,8,9]
p massiv.inject (true) { |result, elem| result && (elem > 2)}
p "***"
p "posle versii 1.8"
p "udovletvoryaet li vse elementi usloviyu ?"
p massiv = [1,2,2,3,4,5,6,7,8,9]
p massiv.all? { |elem| elem > 2 }
p "***"
p "do versii 1.8"
p "udovletvoryaet li odin element usloviyu ?"
p massiv = [1,2,3,4,5,6,7,8,9]
p massiv.inject (false) { |result, elem| result || (elem > 2)}
p "***"
p "posle versii 1.8"
p "udovletvoryaet li vse elementi usloviyu ?"
p massiv = [1,2,2,3,4,5,6,7,8,9]
p massiv.any? { |elem| elem > 2 }

p "*** hitrosti ***"
p "generaciya parolya"
p simvoly = ['a'..'z', 'A'..'Z', '0'..'9'].map { |x| x.to_a }.flatten
p (0...8).map{ simvoly[ rand (simvoly.size)]}.join
p "peremeshat' uporyadochenny massiv"
p massiv = [1,2,2,3,4,5,6,7,8,9]
p massiv.sort_by{rand}
p massiv.sort_by!{rand}
p "po ubivaniy"
p mas = [1,2,3,9,7,5,6,4]
p mas. sort{ |x, y| y <=> x}