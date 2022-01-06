=begin
P: write a program that takes the users name and greets them. if they append an "!" to their name, it shouts at them instead.

input: string
output: one of two strings 

A: 
initiate name variable
ask for the users name, and assign the input to the name variable. 
if the name string includes a !, 
  greet the user with a shout
else,
  greet the user like normal

=end

print "What is your name?  "
name = gets
name.chomp

if name[-1] == "!"
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else 
  puts "Hello #{name}."
end

