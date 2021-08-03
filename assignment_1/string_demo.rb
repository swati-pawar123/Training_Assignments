# Strings Methods

str1 = "Hello"

# To get the length of strings
puts "Length of the string is:"
puts str1.size
#puts str1.length

# Uppercase of string
puts "Uppercase of string is:"
#puts str1.upcase
puts str1.upcase!

# Lowercase of string
puts "Lowercase of string is:"
#puts str1.downcase
puts str1.downcase!

# Reverse of string
puts "Reverse of string is:"
#puts str1.reverse
puts str1.reverse!

# concatenate string
str2 = "Welcome"
puts str2 + "swati"
#puts str2.concat("swati")
#puts str2 << "swati"

# remove whitespace
str3 = "     Hi      "
puts "string with whitespace:" + str3
puts "string without whitespace:" + str3.strip

# counting characters in strings
str4 = "aaab"
puts str4.count("a")

# To find string contains another string
str5 = "Today is sunday"
puts str5.include?("sunday")

# string indexing and slicing
msg = "Welcome to Ruby on Rails"
#positive indexing
puts msg[0]
#negative indexing
puts msg[-1]

puts msg[0,4]
#ranges
puts msg[0..12]
puts msg[0,msg.length]


=begin
To Run => ruby string_demo.rb

Output=>

Length of the string is:
5
Uppercase of string is:
HELLO
Lowercase of string is:
hello
Reverse of string is:
olleh
Welcomeswati
string with whitespace:     Hi
string without whitespace:Hi
3
true
W
s
Welc
Welcome to Ru
Welcome to Ruby on Rails

=end