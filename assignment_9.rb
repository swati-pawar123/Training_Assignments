#Ass-9 => Write a Ruby program which define dynamic methods and method will return something also use missing_method. It should return some result to console if somee method is missing.

# method_missing=> Method missing customize our own error messages with the concept of method overriding. This is only when we wouldn't want to get an exception.

puts "method_missing example:"

class Animal
  def walk
    puts "I am Walking!"
  end
end

cow = Animal.new
cow.walk    #I am Walking!

#cow.fly     # undefined method `fly' for #<Animal:0x0000562cb794b850> (NoMethodError)

#Instead of NoMethodError we display our own error message using method_missing
class Cow < Animal
  def method_missing(m, *args, &block)    # define method_missing
    if m.to_s == "fly"                 # if method passed is "fly" then return Sorry message
      puts "Sorry, cows can't fly!"
    else
      super
    end
  end
end

cow1 = Cow.new
cow1.fly
cow1.walk

puts "\ndefine_method example:"
#define_method=> It is a private instance method of the class Module. It is only defined on classes and modules

# syntax=> define_method :method_name do |arguments|
class Cat
  define_method(:eat) do |name, food|
    puts "#{name} loves #{food}"
  end
end
cat1 = Cat.new
# my_hello is a method to call
cat1.eat("Miky", "Milk")


=begin

Run=>ruby assignment_9.rb

Output=>

method_missing example:
I am Walking!
Sorry, cows can't fly!
I am Walking!

define_method example:
Miky loves Milk

=end

