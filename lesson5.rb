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
p "*"
p stroka1 = "asdfghjkl qwertyu zxcbnm 111111 222222 333333!"
p stroka1[3..3]
p stroka1[3] # esli ne diapazon - > vidaetsya kod !!!!! ne rabotaet
# iz koda v simvol .chr
p stroka1[3].chr #!!!
p "*"
p ".revers"
p stroka2 = "asdfghjkl qwertyu zxcbnm 111111 222222 333333!"
p stroka2.reverse
p "dfghkjl".reverse
p "***"

p "zamena podstroki .sub .gsub"
p stroka = "asd111fghjkl qwer111tyu zxc111bnm 111111 222222 333333!"
p stroka.sub("111","000")
p "*"
p stroka3 = "asd111fghjkl qwer111tyu zxc111bnm 111111 222222 333333!"
p stroka3.gsub("111","55555")
p "***"

p "skanirovanie na oshibki .skan"
p stroka = "asd111fghjkl qwer111tyu zxc111bnm 111111 222222 333333!"
p stroka.scan("111")
p stroka.scan("111").size
p "***"

# pravila -> /              vspominaem reg exp
p "/ (111|000) /"
p "/ \w+@+[\w\.]+\w + /i"

p "simvolnie classi [ ] "
p "/[abcdef]/"
p "/[a-zA-Z]/"
p "/[0-9a-z]/"
p "/[^0-9]/" # vse simv krome cifr
p "*"
p " \\s -> [\f\t\n\r] -> probelniy"
p " \\S -> [^\f\t\n\r] -> krome probelnogo"
p " \\d -> [0-9] cifra"
p " \\D -> [^0-9] vse krome cifri"
p " \\w -> [a-zA-Z0-9] latinica ili cifra"
p " \\W -> [^a-zA-Z0-9] vse krome latinici ili cifri"
p " .   -> [^\n\r] vse krome perevoda stroki"
p "***"

p "kvantifikatori"
p "/w{3}/"
p "/d{1,3}/"
p "[a-zA-Z]{3,}"
p "*"
p "* -> {0,}"
p "+ -> {1,}"
p "? -> {0,1}"
p "***"

p "alternativa ( | )"
p "/(ji|shi)/" # (жы |шы)
p "(\w+|\d+)"
# (\w+|[а-яА-Я]+)
p ".any? .all? .inject"
p "***"

p "gruppirovka ( ) 1$ 2$ 3$ .. $9"
p "2+7*3".gsub(/(\d+)\*(\d+)/){ $1.to_i * $2.to_i }     # 2 + 21
p ("(?:...)")
p ("(?!...)")
p "***"

p "fiksaciya"
p "/^\d+/" # ^ - nachalo stroki
p "/\w+$/" # $ - konec stroki
p "***"

p "modifikatori"
p "/(hello|world)/i" # ili .. ili .. nezavisimo ot registra
p "/\s+/mix" # neskolko probelnih simvolov kot idyt podryad
p "m -> multiline - perenos stroki"
p "i -> ignorecase - poisk bez ucheta registra" # tolko dlya latinici
p "x -> extended - ignorirovat probelnie simvoli"
p "***"

p "Pravilnoe razbienie"
p "raz, dva, tri".split((/[,\.?! ]+/))
p "***"

p "pravilnaya zamena"
p "Julo-bulo shubko shupyashee juvotnoe"
p "Julo-bulo shubko shupyashee juvotnoe".gsub(/(j|h)u/){$1 + 'i'}
p "Julo-bulo shubko shupyashee juvotnoe".gsub(/(J|H|j|h)u/){$1 + 'i'}
p "Julo-bulo shubko shupyashee juvotnoe".gsub(/([JHjh])u/){$1 + 'i'}
p "raz, dva, tri!".gsub(/[a-z]+/){ |slovo| slovo.reverse }
p "***"

p "pravilniy poisk"
p "raz, dva, tri!".scan(/[a-zA-Z]+/)
p "raz, dva, tri!".scan(/[,\.;:! ]+/)
p "*"
