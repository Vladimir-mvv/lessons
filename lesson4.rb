# heshi
p 'heshi'

p xew = {5=>3,1=>6,3=>2}
p xew[5]
p xew[2]
p xew[3]

p mas = [nil,6, nil, 2, nil, 3]
p mas [5]
p mas [2]
p mas [3]
p "*"

p '1 sluchay primenimossti hesha'
p 'esli v massive budet mnogo nil dannih'

p mass = [1,2,3,1,4,2,1,4,5]
p mass.uniq.map{ |i| [i, mass.find_all{ |j| j == i}.size]}
p "*"
p '   '
p mass = [1,2,3,1,4,2,1,4,5]
p mass.inject( Hash.new{ 0 } ) { |result, i|
  result[i] += 1
  result
}
p '***'

p '2 sluchay primenimossti hesha'
p 'esli neobhodimo pos4itat chislo elementov v massive '

p massiv = [ ['comp1.ru','192.168.0.1'], ['comp2.ru','192.168.0.2'], ['comp3.ru','192.168.0.3']]
p dns_name = 'comp1.ru'
p massiv.find_all{ |key, value| key == dns_name }#[0][-1] # interesno
p massiv.find_all{ |key, value| key == dns_name }[0][-1] # interesno
p "*"

p hesh_massiv = { 'comp1.ru' => '192.168.0.1', 'comp2.ru' => '192.168.0.2', 'comp3.ru' => '192.168.0.3' }
p hesh_massiv['comp1.ru']

p '***'

p '3 sluchay primenimossti hesha'
p 'esli neobhodimo copoctavit odin nabor dannih s drugim'

p mas = [1,2,1,2,3,2,1,2,4,5]
p mas.inject( {} ){ | result, i | result.update( { i=>1 } ) { | key,old,new| old+new } }
p "*****"
p "     "

p massiv_11 = ["a", "b"]
p massiv_22 = ["c", 'd']
p n_ewmas = { massiv_11 => 100, massiv_22 => 300 }
p n_ewmas[ massiv_11 ]

p massiv_11[0] = "z"
p n_ewmas[ massiv_11 ]

p n_ewmas.rehash
p n_ewmas[ massiv_11 ]
p "***"

# izmenenie klucha v asociativ mas - .hash
p [1,2,3].hash
p "***"

p'iz 1mernogo massiva'
p massiv1 = [1,4,5,3,2,2]
p Hash[ *massiv1 ]
p "***"

p'iz 2mernogo massiva'
p massiv2 = [[1,4], [5,3], [2,2]]
p Hash[ *massiv2.flatten ]
p "***"

p massivv = [[1,5,2],[4,3,2]]
p Hash[ *massivv.transpose.flatten ]
p "***"

p "net dannih"
p xew = { }
p xew[1] = 4
p xew[5] = 3
p xew[2] = 2
p xew
p '***'

p'izvesten tolko tip znacheniy'
p xew = Hash.new( "" )
p xew[ "pesenka pro zaycev" ] += " v temnosinem lesu"
p xew[ "pesenka pro zaycev" ] += ", gde trepeschut osini"
p xew
p '*'

p xew1 = Hash.new( 0 )
p xew1[ 'zarplata' ] += 60
p xew1[ 'zarplata' ] *= 21
p xew1
p '***'

p 'vse dano'
p m = { "mart" => 400, "yanvar" => 500, "fevral" => 700}
p '***'
p '      '
p '***'
p "*** metodi raboti ***"
p '***'
p '  '

p ' poluchenie mas kluchey i mas znacheniy'
p '.keys .values'
p n = { 1 => 4, 5 => 3, 2 => 2 }.keys
p n = { '1' => 4, '5' => 3, '2' => 2 }.values
p '***'

p 'zamena kluchey na znacheniya'
p '.invert'
p xew2 = { "1kl" => 4, "2kl" => 5, "3kl" => 7 }
p xew2.invert
p '*'

p xew2 = { "1kl" => 4, "2kl" => 5, "3kl" => 4 }
p xew2.invert
p '***'

p 'obnovlenie pari'
p massiv3 = [1,2,1,2,3,2,1,2,4,5]
p massiv3.inject( {} ){ | result, i | result.update( { i=>1 } ){ |key,old,new| old+new } }

p 'razmer .size'
p xew2 = { "1kl" => 4, "2kl" => 5, "3kl" => 4 }
p xew2.size
p '***'

p 'udalenie pari po kluchu .delete'
p n = { 1 => 4, 5 => 3, 2 => 2, 4 => 5 }
p n.delete( 5 )
p n
p n.delete( 5 )
p '***'

p 'udalenie proizvolnoy pari .shift'
p n = { 1 => 4, 5 => 3, 2 => 2, 4 => 5 }
p n.shift
p n
p '***'

p 'preobrazovanie v indeksniy mas'
p masn = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24 }
p masn.to_a
p '***'

p 'sortirovka'
p masn = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24 }
p masn.sort
p masn.sort_by{ |key,value| value }
p '***'

p 'min max'
p masn = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24 }
p 'max'
p masn.max
p 'min'
p masn.min
p '*'
p masn = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24 }
p 'max'
p masn.max_by{ |key,value| value }
p 'min'
p masn.min_by{ |array| array[0] }
p '***'
p '  '
p 'logicheskie metodi'
p 'pustoy?'
p pustoy = {}
p polniy_masn = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24, 'kluch' => 'zamochniy' }
p pustoy == {}
p polniy_masn == {}
p '*'
p pustoy.size.zero?
p polniy_masn.size.zero?
p '*'
p pustoy.empty?
p polniy_masn.empty?
p '***'

p 'est li kluch'
p polniy_masn = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24, 'kluch' => 'zamochniy' }
p polniy_masn.keys.include?( "gaechn kluch" )
p '*'
p polniy_masn.key?( "gaechn kluch" )
p '*'
p polniy_masn.include?( "gaechn kluch" )
p '***'

p 'est li znachenie?'
p polniy_masn = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24, 'kluch' => 'zamochniy' }
p polniy_masn.values.include?( "gaechn kluch" )
p polniy_masn.values.include?( "zamochniy" )
p '*'
p polniy_masn.value?( "zamochniy" )
p '*'
p polniy_masn.has_value?( "zamochniy" )
p '***'
p '   '

p '*** iteratori ***'
p 'find_all map inject'
#p polniy_mas = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24, 'kluch' => 'zamochniy' }
#p polniy_mas = { 'gaechn kluch' => 10, 'razvodnoy kluch' => 24 }
p polniy_mas = { "gaechn kluch" => 10, "razvodnoy kluch" => 24 }
p polniy_mas.find_all{ |array| array[1] < 15 }
p polniy_mas.map{ |array| "#{array[0]} na #{array[1]}" }
p polniy_mas.inject(0){ |result, array| result + array[1] }
p '***'
p '   '

p polniy_mass = { "gaechn kluch" => 10, "razvodnoy kluch" => 24 }
p polniy_mass.find_all{ |key, value| value < 15 }
p polniy_mass.map{ |key, value| "#{key} na #{value}" }
p polniy_mass.inject(0){ |result, (key, value)| result+value }
p "***"
p '   '

class Hash
  def method_missing( id )
    self[ id.id2name ]
  end
end

p ma = { "hello" => "hi", "bye" => "bi bi" }
p ma.hello
p ma.bye