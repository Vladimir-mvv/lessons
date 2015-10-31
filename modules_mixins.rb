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

p "*** included hook"

module Quality
#=begin
  def self.included(klass)
    klass.send :extend, ClassMethods
  end
#=end

  module ClassMethods
    def global_quality
      "All the books are great"
    end
  end

  def quality
    "This particular book is great"
  end
end

class Book
  include Quality
end

p Book.global_quality

p Book.new.quality