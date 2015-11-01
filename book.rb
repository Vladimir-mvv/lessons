class Book
  include Quality
  attr_accessor :author, :title

  def initialize author, title
    @author = author
    @title = title
  end
end

#p Book.global_quality

#p Book.new.quality