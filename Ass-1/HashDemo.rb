# Hashes => stores information using key value pair

#printing all keys and values
hash1 = { "Name" => "swati",
          "Subject" => "Ruby",
          "Topic" => "Data Types"}
puts "printing all keys and values in hash1:"
hash1.each do |key,value|
  puts "#{key}=>#{value}"
end

# printing all keys
puts "\nall keys in hash1:"
puts hash1.keys

# printing all values
puts "\nall values in hash1:"
puts hash1.values

puts "\nAfter adding key/value to hash1:"
hash1["Author"] = "Yukihiro Matsumoto"
puts hash1

puts "\nAfter inverting hash1:"
puts hash1.invert

puts "\nAfter removing key-value from staring position in hash1:"
hash1.shift
puts hash1

puts "\nTest whether hash is empty or not:"
puts hash1.empty?

puts "\nTest whether a given key is present in hash1:"
puts hash1.key?("Name")

puts "\nTest whether a given value is present in hash1:"
puts hash1.value?("Ruby")

puts "\nAfter deleting particular key-value pair from hash1:"
hash1.delete("Author")

puts "\nRemove all key value pair from hash1:"
hash1.clear
puts hash1

=begin
To run => ruby HashDemo.rb

Output=>

printing all keys and values in hash1:
Name=>swati
Subject=>Ruby
Topic=>Data Types

all keys in hash1:
Name
Subject
Topic

all values in hash1:
swati
Ruby
Data Types

After adding key/value to hash1:
{"Name"=>"swati", "Subject"=>"Ruby", "Topic"=>"Data Types", "Author"=>"Yukihiro Matsumoto"}

After inverting hash1:
{"swati"=>"Name", "Ruby"=>"Subject", "Data Types"=>"Topic", "Yukihiro Matsumoto"=>"Author"}

After removing key-value from staring position in hash1:
{"Subject"=>"Ruby", "Topic"=>"Data Types", "Author"=>"Yukihiro Matsumoto"}

Test whether hash is empty or not:
false

Test whether a given key is present in hash1:
false

Test whether a given value is present in hash1:
true

After deleting particular key-value pair from hash1:
{"Subject"=>"Ruby", "Topic"=>"Data Types"}

Remove all key value pair from hash1:
{}

=end