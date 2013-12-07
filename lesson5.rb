# stroki " "  ' ' #{}
p "stroka"
p'stroka'
p "ya em #{'soma'}"
# specsimvoli \  \n  \t  \\   \"
p '\n'
p "\n"
p '***'

p chislo = 9
p massiv = [1,2,3,4]
p 'chislo = ' + chislo.to_s + ', moy massiv dlinni ' + massiv.size.to_s
p "chislo =  #{chislo}, moy massiv dlinni #{massiv.size} "
p "chislo =  #{chislo}, moy massiv dlinni #{massiv.join(",")} "
p "chislo =  #{chislo}, moy massiv dlinni #{massiv} "
p "***"

p "metodi raboti so strokami"
p mass = [7,5,8,3,2,5,4,8,9]
p mass.max
p "Max element massiva = #{mass.max}"
p '***'

p chislo = 123
p "v dvoichn vide %b"  % chislo # ???!!! zadeysvovali metod % analog sprintf Cu
p '*'
p "v dvoichn vide #{ chislo.to_s(2) }"
p '***'

p syprug = "Sasha"
p sypruga = "Masha"
p syprug + " plus " + sypruga + " = semya"
p "***"
p let = 180
p "ky-ky! " * let
p "***"

class String
  alias / :split
end

p lt = "ky-ky! " * let
p lt
p ( lt / " ").size # !!!
p "***"

p ".split"
p "ky-ky".split('-')
p "ky-ky".split('y')

p ".join"
p ["ky","ky"].join('-')
p ["ky","ky"].join(',')
p ["ky","ky"].join
p ["ky","ky"].to_s # !!!
p "*"
p ["ky","ky"] * '-'
p ["ky","ky"] * 3
p "***"

p "dlinna stroki"
p "qwertyuiop[]asdfghjkl"
p "qwertyuiop[]asdfghjkl".size
p "tri"
puts "tri"
p "tri".size
p "***"

p "poluchenie podstroki"
p stroka = "asdfghjkl qwertyu zxcbnm 111111 222222 333333!"
p stroka[27..-1]
p stroka[27...-1]
p stroka[9...14]
p stroka[9..13]
p stroka[3..3]
#p stroka[3] # esli ne diapazon - > vidaetsya kod
