# rabota s faylami
# 3 sposoba osnovnih
# 1 esli nujen ves fayl celikom -> nado isp metodi klassa IO
# 2 esli nujno rabotat tolko s odnim faylom na chtenie/ zapis -> nujno ispolzovat $stdin $stdout $stderr
# 3 esli ne podhodyat 2 predidusch sposoba -> universalniy
p "1 sposob metodi klassa IO"
p config = IO.read('lesson1.rb')  # KLASS !!!  schitivaet kak stroky!!!
p config.class
p '***'
p '    '

p '2 sposob   perenapravlenie potoka'
#$stdin = File.open('vhodnie dannie.txt') # schitivanie dannih s fayla
#$stdout = File.open('vihodnie dannie.txt', 'w') # w -> write  ->  zapis/perezapis  dannih v fayl
#$stderr = File.open('soobscheniya ob owibkah.txt', 'a') # a -> append   ->   zapis owibok v fayl

#p "primer 2"
#$stdout = File.open('vihodnie_dannie.txt', 'w') # w -> write  ->  zapis/perezapis  dannih v fayl
#$stderr = File.open('soobscheniya ob owibkah.txt', 'a') # a -> append   ->   zapis owibok v fayl

#p "kasjghlkdjglkjg dlfkgjdlfkgj dfghlkjg"
#p 'zapis v fayl'
#raise 'prinuditelniy vizov owibki'
p "***"
p '      '

p '3 universalniy sposob  File.open    operaciya otkritiya/zakritiya fayla'
#stroka = File.open('vhodnie dannie.txt','r'){ |file| file.read }
#stroka = File.open('vhodnie dannie.txt'){ |file| file.read }
#stroka = File.open('vihodnie_dannie.txt','w'){ |file| file.write nekaya_stroka }
#stroka = File.open('vihodnie_dannie.txt','a'){ |file| file.puts nekaya_stroka }

p "primer 3"
nekaya_stroka = 'aksdjfl ffd gjlkdfg hkdsfg'
p stroka = File.open('vihodnie_dannie.txt','w'){ |file| file.write nekaya_stroka }
p stroka = File.open('vihodnie_dannie.txt','a'){ |file| file.puts nekaya_stroka }