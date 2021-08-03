#Ass4=>Demonstrate Inheritance in Ruby by building a superclass called Bird from which our Duck,Goose, and Owl classes will derive their functionality.

class Bird

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def call
    'Squaaaaaaawk!'
  end

  def className
    self.class.to_s
  end

  def print
    puts name + " " + className + " says " + call
  end

end

class Duck < Bird
  def call
    'Quack-Quack!!'
  end
end

class Goose < Bird
  def call
    'honk-honk!!'
  end
end

class Owl < Bird
  def call
    'Whoo-hoo!!'
  end
end

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

=begin

Run=>ruby assignment_4.rb

Output=>

Hawkeye Bird says Squaaaaaaawk!
Donald Duck says Quack-Quack!!
Mother Goose says honk-honk!!
Woodsey Owl says Whoo-hoo!!

=end