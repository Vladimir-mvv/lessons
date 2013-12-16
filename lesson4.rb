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

p massiv1 = [1,4,5,3,2,2]
p Hash[ *massiv1 ]
p "***"

p massiv2 = [[1,4], [5,3], [2,2]]
p Hash[ *massiv2.flatten ]