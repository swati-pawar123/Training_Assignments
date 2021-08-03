#Ass-5=> Demonstrate a Ruby programs which uses loops like, each, times, do loop, etc. With having use of operators & exceptions which cause to break loop like divide by zero, etc.

#each iterator
puts "each iterator example:"
names = ['Swati', 'Pallavi', 'Aniket','Nikita','Rahul']
x = 1
names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

#times iterator
puts "\ntimes iterator example:"
5.times do |n|
  puts n
end

#For loop
puts "\nFor loop example:"

x = ['Blue', 'Red', 'Green']
for i in x do
  puts i
end

#While loop
puts "\nwhile loop example:"
n=4
while n > 0
  puts "Hello"
  n = n - 1
end

#Do-While loop
puts "\nDo-While loop example:"

i = 0
loop do
  i = i + 2
  puts i
  if i == 10
    break
  end
end

puts "\n"
#Exception handling
puts "Enter first Number:"
num1 = gets.chomp.to_i
puts "Enter Second Number:"
num2 = gets.chomp.to_i

begin
  result = num1/num2
rescue ZeroDivisionError
  puts "Don't divide by zero!"
rescue TypeError
  puts "Division only works on numbers!"
else
  puts "Result is: #{result}"
end

=begin
Run => ruby assignment_5.rb
Output=>
each iterator example:
1. Swati
2. Pallavi
3. Aniket
4. Nikita
5. Rahul

times iterator example:
0
1
2
3
4

For loop example:
Blue
Red
Green

while loop example:
Hello
Hello
Hello
Hello

Do-While loop example:
2
4
6
8
10

Exception handling Example:
Enter first Number:
10
Enter Second Number:
0
Don't divide by zero!

#again run exception handling

Exception handling Example:
Enter first Number:
hi
Enter Second Number:
hii
Division only works on numbers!

#again run exception handling

Exception handling Example:
Enter first Number:
10
Enter Second Number:
5
Result is: 2

=end


