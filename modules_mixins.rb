p "*** define module"

module Library
  class Manager
    def initialize readers=[], books=[], readers_with_books=[]
      @readers = readers
      @books = books
      @readers_with_books=readers_with_books

    end
  end
end

p "*** Namespaces"

Library::Manager.new([], [], [])
#Library::Reader.new('Vasya Pupkin', 15)
Library::Manager.new('Vasya Pupkin', 15)

p "*** include and extend"

module SayHello
  def say_hello
    "Hello"
  end
end

=begin
class Reader
  include SayHello
  # add object methods
end

r=Reader.new
p r.say_hello
=end

class Reader
  extend SayHello
  # add class methods
end

r=Reader.new
#p r.say_hello # undefined method   ERROR
p Reader.say_hello