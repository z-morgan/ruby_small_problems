=begin
method takes an integer, representing the number of light switches and the number of iterations. o
input: integer
output: array of integers

- the method arguement determines the number of switches, and the number of iterations
- on each iteration, each xth light is toggled, where x starts as 1, and increases by 1 for each subsequent iteration

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

D: Array of booleans
A:
generate an array of length n where every element is false
initiate a variable which tracks the multiplication value, set it to 1
loop n times:
  iterate through the array, and for every multiplication value'th element, flip it
generate a new array with the (index - 1) of every element that is true 
return that array
=end


# def which_switches_are_on?(n)
#   switches = []
#   n.times { switches << false }
#   multiplier = 1
  
#   n.times do
#     switches = switches.map.with_index { |el, index| (index + 1) % multiplier == 0 ? !el : el }
#     multiplier += 1
#   end
  
#   on_switches = []
#   switches.each_with_index { |el, index| on_switches << (index + 1) if el }
#   on_switches
# end

=begin
D: hash
A:
generate a hash with n elements where the keys are the number, and the values are set to false
loop 1 to n times through the hash, and on each iteration:
  flip every number'th value
return an array containing all of the keys whose value is true
=end
require 'pry'
def generate_switches(n)
  hash = {}
  1.upto(n) { |num| hash[num] = false }
  hash
end

def which_switches_are_on?(n)
  switches = generate_switches(n)
  
  1.upto(n) do |n|
    switches.each { |key, v| switches[key] = !switches[key] if key % n == 0 }
  end
  binding.pry
  switches.select { |_, v| v == true }.keys
end
  

p which_switches_are_on?(1000)