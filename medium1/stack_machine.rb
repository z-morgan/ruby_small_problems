=begin
method takes a series of one word commands as a sting, and manipulates a stack and register in the method
input: string of word-commands
output: value of register upon PRINT command

- stack is essentially an array of values
- register is a single value that is considered the 'current' value, and is not part of the stack.
- register starts as zero
- stack starts out empty
- implement the following operations:

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value


D: array of commands and integers, array for stack, variable for register
A:
create a constant string containing all of the numbers
initialize an empty array for the stack and a variable set to zero for register
convert the input into an array of commands and integer values
iterate through the commands, and for each:
  if element is a command, perform the specified operation.
  else, assign register to the integer element
  
=end

require 'pry'

def minilang(command_str)
  stack = []
  register = 0
  command_str.split.each do |command|
    case command
      when 'PUSH'  then stack.push(register)
      when 'ADD'   then register += stack.pop
      when 'SUB'   then register -= stack.pop
      when 'MULT'  then register *= stack.pop
      when 'DIV'   then register /= stack.pop
      when 'MOD'   then register %= stack.pop
      when 'POP'   then register = stack.pop
      when 'PRINT' then puts register
      else 
        if command.to_i.to_s == command
          register = command.to_i
        else
          puts "'#{command}' is not a valid token"
        end
    end
  end
  nil
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')