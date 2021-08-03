# Array=> stores all types of data with numerical index

# to print each element in the array
arr1 = [ "swati", 10, 3.14, "This is a string"]
puts "Printing all elements in arr1:"
arr1.each do |i|
 puts i
end

# to get array lenth
puts "\nLength of arr1:"
#puts arr1.size
puts arr1.length

# access the elements at a particular position
arr2 = [100, 30.7, "Hello", true]
puts "\nelement at 3rd position in arr2:"
puts arr2.at(2)

# print first element in an array
puts "\nFirst element in arr2:"
puts arr2.first

# print last element in an array
puts "\nLast element in arr2:"
puts arr2.last

# add items to the end
puts "\nadded element at end in arr2:"
arr3 = arr2.push(100)
puts arr3

# add elements at particular position
puts "\nAfter adding element at 4th position in arr2:"
arr2.insert(3,"32.65")
puts arr2

# remove last elements
puts "\nAfter removing last elements in arr2:"
arr2.pop
puts arr2

# remove duplicates items
arr4 = [1, 2, 2, 2, 3, 4, 5, 6, 6, 6, 7]
#puts arr2.uniq
puts "\nAfter removing duplicate element in arr4:"
puts arr4.uniq!

# indexing and slicing
arr5 = [10, true, "Ruby", 30, 50]
puts "\nelement at 2nd position:"
puts arr5[1]

puts "\nelement at 4th position using negative indexing:"
puts arr5[-2]

puts "\nelement at particular range:"
puts arr5[2,4]
#puts arr5[2..4]

=begin

To run=> ruby array_demo.rb

Output=>

Printing all elements in arr1:
swati
10
3.14
This is a string

Length of arr1:
4

element at 3rd position in arr2:
Hello

First element in arr2:
100

Last element in arr2:
true

added element at end in arr2:
100
30.7
Hello
true
100

After adding element at 4th position in arr2:
100
30.7
Hello
32.65
true
100

After removing last elements in arr2:
100
30.7
Hello
32.65
true

After removing duplicate element in arr4:
1
2
3
4
5
6
7

element at 2nd position:
true

element at 4th position using negative indexing:
30

element at particular range:
Ruby
30
50

=end