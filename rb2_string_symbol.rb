# Interpolation, Concatenation

# Interpolation
p "New string"
p String.new
p "Seconds/day: #{24*60*60}"
p 'Seconds/day: #{24*60*60}'
p "Tro #{'Lo ' *3}!!!"

p "Now is #{
            def the(a)
              'the ' +a
            end
            the('time')
            } for all good coders ..."

# Concatenation

p 'Con' "cat" 'ena' "te"
p 'Con' + "cat" + 'ena' + "te"

p str = "Reading"

p str << ", People."

p str.concat(" Are you doing it?")

# Accessing

p "methods: str   slice"
p str = "Reading, People. Are you doing it?"
p str[9]
p str.slice(9)

p str = "Reading, People. Are you doing it?"
p str[9, 6]
p str.slice(9, 6)

p ".. []"
p str = "Reading, People. Are you doing it?"
p str[9..-20]
p str["People"]
p str["sfdf"] # nil

p "regexp"
p str = "Reading, People. Are you doing it?"
p str[/[ABC](.)/]

# Useful methods
p "capitalize  rEAdinG"
p "rEAdinG".capitalize
p " rEA dinG  ".capitalize
p ' "Reading".downcase '
p "Reading".downcase
p '"Reading".upcase'
p "Reading".upcase
p '"Reading".chars'
p "Reading".chars
p '"Reading".index("adi")'
p "Reading".index("adi")
p "Reading Reading".index("adi")
p '"Reading".insert(0, "Exciting ")'
p "Reading".insert(0, "Exciting ")
p '"Reading".match(/(.)\1/)'
p "Reading".match(/(.)\1/)
p '"Exciting Reading".partition("ing")'
p "Exciting Reading".partition("ing") # array
p '"Reading".reverse'
p "Reading".reverse
p '"Reading, People. Are you doing it?".split'
p "Reading, People. Are you doing it?".split
p '"Reading,_People._Are you_doing it?".split(_)'
p "Reading,_People._Are you_doing it?".split('_')

# Symbol
p "Symbol"

p :ruby_rules
p :"Ruby rules"
p language = "Ruby"
p :"#{language} rules"
p :ruby.object_id
p :ruby.object_id
p "ruby".object_id
p "ruby".object_id
