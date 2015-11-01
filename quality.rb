module Quality

  def self.included(klass)
    klass.send :extend, ClassMethods
  end


  module ClassMethods
    def global_quality
      #"All the books are great"
      "All the #{self.name.pluralize.downcase} are great"
    end
  end

  def quality
    # "This particular book is great"
    "This particular #{self.class.name} is great"
  end
end
=begin
class Book
  include Quality
end

p Book.global_quality

p Book.new.quality
=end