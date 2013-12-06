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

