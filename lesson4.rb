# heshi
p xew = {5=>3,1=>6,3=>2}
p xew[5]
p xew[2]
p xew[3]

p mas = [nil,6, nil, 2, nil, 3]
p mas [5]
p mas [2]
p mas [3]
p "*"

p mass = [1,2,3,1,4,2,1,4,5]
p mass.uniq.map{ |i| [i, mass.find_all{ |j| j == i}.size]}
