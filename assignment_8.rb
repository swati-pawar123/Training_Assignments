#Ass-8 => Write a Ruby program which access private methods/attributes outside of class.

class Sample
  def method1
    puts "This is Public method"
    method2    # calling private method
  end

  private
  def method2
    puts "This is Private method"
  end
end

# create an object
obj = Sample.new
obj.method1

puts "\nExample-2"
# Private methods cannot be accessed,from outside the class. Only the class methods can access private members.

class Square
   # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  def getArea
    getWidth() * getHeight
  end

  def getWidth
    @width
  end
  def getHeight
    @height
  end
  # private methods
  private :getWidth, :getHeight

end

# create an object
square1 = Square.new(10, 20)

a = square1.getArea()
puts "Area of the box is : #{a}"

=begin

Run=>ruby assignment_8.rb

Output=>
This is Public method
This is Private method

Example-2
Area of the box is : 200

=end