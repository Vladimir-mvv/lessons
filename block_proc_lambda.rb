['blocks','Proc','lambdas'].map do |i|
  puts i
end
puts "in Ruby"

p " *** "
def names
  yield "Peter", "Bob"
end

p " *** { |x,y| puts x,y} "
names { |x,y| puts x,y}

p " *** do |x,y|"
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

p " *** array = [1,2,3,4]"

array = [1,2,3,4]
array.collect do |n|
  p n**2
#  p n
end

#array = [1,2,3,4]
array.collect! do |n|
  p n**2
#  p n
end

p " *** class Array"
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

p " *** proc *** "
=begin
class Array
  def iterate!(code)
    self.each_with_index do |n,i|
      self[i] = code.call(n)
    end
  end
end

code = Proc.new { |n| n**2 }
array = [1,2,3,4]

array.iterate!(code)

puts array.inspect

p " *** "
p " callback (:after, :before) "

def process_image(image, options={})
  options[:before].call(image)
  p "do something with image ....."
  options[:after].call(image)
end

process_image(image_data,
                        :before => Proc.new{ puts "Checking image format..."},
                        :after => Proc.new{puts "Uploading image to the server..."}
              )
=end
p " *** "
p " *** lambda ***"
p " *** "

class Array
  def iterate!(code)
    self.each_with_index do |n,i|
      self[i] = code.call(n)
    end
  end
end

array = [1,2,3,4]
array.iterate!(lambda { |n| n**2})
#lambda proveraet kol args

puts array.inspect


p " *** "
def args(code)
  one, two = 1,2
  code.call(one, two)
end
args(Proc.new{|a,b,c| "#{a} and #{b} and #{c.class}"})

#args(lambda{|a,b,c| "#{a} and #{b} and #{c.class}"})

p " *** "
def proc_return
  Proc.new { return "Proc.new"}.call
  return "proc_return method finished"
end

def lambda_return
  lambda {return "lambda"}.call
  return "lambda_return method finished"
end
puts proc_return
puts lambda_return



p " *** "
p " *** "
def generic_return(code)
  value = code.call
  "generic_return finished => #{value}"
end

p " *** "
=begin
puts generic_return (
                    Proc.new {return "Proc.new"}
                    )
=end
# -> error
p "***"
puts generic_return (
                        lambda {return "lambda"}
                    )
