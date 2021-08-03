#Ass7=>Write a Ruby program which show duck typing, uses respond_to? Method.

#Duck Typing=> Using this we check for the presence of given method or attributes

class Duck
  def quack
    puts "Duck is quacking!!"
  end
end

class Goose
  def quack
    puts "Goose is quacking!!"
  end
end


class Crow
  def caw
    puts "caw-caw!!"
  end
end

#Call quack method for each item of the birds array. Only Duck and Goose should be quacking
def ItQuack(ducks)
  ducks.each do |duck|
    if duck.respond_to? :quack
      duck.quack
    end
  end
end

birds = [Duck.new, Goose.new, Crow.new]

ItQuack(birds)

=begin

Run => ruby assignment_7.rb

Output=>
Duck is quacking!!
Goose is quacking!!

=end