#Ass-6 => Write a Ruby script which demonstrate use of blocks, lambda vs proc.

# Blocks =>

puts "Block example 1:"
def calculate
  puts "Square is:"
  yield 2
  yield 5
end
calculate{ |n| puts n**2 }

puts "\nBlock example 2:"
x = "Outer variable"
3.times do |x|
  puts "Inside Block: #{x}"
end
puts "Outside Block: #{x}"

# Lambda =>
puts "\nLambda Example:"
square = lambda{ |x| puts x**2 }
#square =->x{ puts x**2 }
square.call 5

# Procs =>
puts "\nProcs Example:"
square = Proc.new{ |x| puts x**2 }
#square =->x{ puts x**2 }
square.call 5

puts "\n"
#Lambda checks required number of arguments passed to it but Proc doesn't care of arguments
proc1 = Proc.new{ |x| puts "This is proc" }
puts proc1.call

lambda1 = lambda{ |x| puts "This is Lambda" }
#puts lambda1.call  #wrong number of arguments (given 0, expected 1) (ArgumentError)
puts lambda1.call 6

#Proc return from current method but lambda return from lambda itself
puts "\nlambda return from lambda itself example:"
def calculate
  lambda{ return 10+20 }.call
  puts "execute method"
  return 1+1
end
puts calculate

puts "\nProc returns from current method example:"
def calculate
  Proc.new{ return 10+20 }.call
  puts "execute method"
  return 1+1
end
puts calculate

=begin
Run =>ruby assignment_6.rb

Output=>

Block example 1:
Square is:
4
25

Block example 2:
Inside Block: 0
Inside Block: 1
Inside Block: 2
Outside Block: Outer variable

Lambda Example:
25

Procs Example:
25

This is proc

This is Lambda


lambda return from lambda itself example:
execute method
2

Proc returns from current method example:
30
=end





