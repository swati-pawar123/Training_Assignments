#Ass3=> Write a ruby program which prompts for and reads one line of input. It then echos the line,then prints it repeatedly, each time removing every second character. It continues until no more characters can be removed. Treat all characters alike; no special treatment for spacesor punctuation.

def skip_letters()
  puts "Please enter a line:"
  word = gets.chomp
  chars_to_skip = 2
  # 0.step creates an iterator starting at 0 and incrementing by chars_to_skip.
  iterator = 0.step(word.size, chars_to_skip)
  #.map runs a given function on each element of an iterable
  chosen_chars = iterator.map { |i| word[i] }.join
end

puts skip_letters()

=begin

Run=>ruby ass3.rb

Output=>
Please enter a line:
sandy
sny

Please enter a line:
On Tuesday, Frank in the motor pool buys lunch
O usa,Faki h oo olby uc

Please enter a line:
Those so aglow point at hues afferent
Toes go on the feet

=end