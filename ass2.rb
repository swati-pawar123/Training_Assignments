
# Write Ruby program which accepts user input and process it then print the result.
# Like radius.rb is a file which accept input as float and returns a calculated Area of circle.

# Area of circle = PI X radius X radius

puts "Enter the radius:"

radius = gets.chomp.to_f

area = 3.141592653 * radius * radius
#area = 22/7 * (radius * radius)

puts "Area is: #{area}"


=begin
To run => ruby ass2.rb

Output=>

Enter the radius:
2
Area is: 12.566370612

=end