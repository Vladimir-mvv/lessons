['blocks','Proc','lambdas'].map do |i|
  puts i
end
puts "in Ruby"

p " *** "
def names
  yield "Peter", "Bob"
end
p " *** "
names { |x,y| puts x,y}

p " *** "
names do |x,y|
  puts x,y
end

p " *** "
def write_ro_file(filename)
  f = File.open(filename, 'w')
  yield f
  f.close
end
write_ro_file("test.txt") {|f| f.write "Hello"}

p " *** "
class Array
  def iterate!
    self.each_with_index do |n,i|
      self[i] = yield(n)
    end
  end
end
array = [1,2,3,4]
array.iterate! do |n|
  n**2
end

puts array.inspect
p " *** "
p " *** "
p " *** "
