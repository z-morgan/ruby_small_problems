=begin
write a method that takes a string and displays the string surrounded by a graphical box

- box must re-size so that any length of text naturally fits inside.

A:
use a large MSG chunk, and string interpolation for the horizontal sides and the text
the variables for the sides should evaluate to a multiple of '--' based on the length of the string

=end

def print_in_box(message)
  if message.size > 76
    new_line_index = 76
    wrapped_message = message[0, new_line_index] + " |\n| " + message[new_line_index..(message.size - 1)]
    new_line_index += 76
    index_shift = 5
    n = -2
    while new_line_index < message.size
      wrapped_message = wrapped_message[0, (new_line_index + index_shift)] + " |\n| " + message[new_line_index..(message.size - 1)]
      new_line_index += 76
      index_shift += 5
      n += 1
    end

    n >= 0 ? offset_factor = n : offset_factor = 0
    number_of_end_spaces = (80 + offset_factor) - wrapped_message.size % 80
    end_spaces = ''
    number_of_end_spaces.times { end_spaces << ' ' }
    wrapped_message = wrapped_message[0, wrapped_message.size] + end_spaces + '|'
    
    side_length = 78
    side = ''
    space = ''
    side_length.times do side << '-' 
    space << ' ' 
    end

    output = <<-MSG
+#{side}+
|#{space}|
| #{wrapped_message}
|#{space}|
+#{side}+
MSG

  else
    side_length = message.size + 2
    side = ''
    space = ''
    side_length.times do side << '-' 
    space << ' ' 
    end

output = <<-MSG
+#{side}+
|#{space}|
| #{message} |
|#{space}|
+#{side}+
MSG
  end

  puts output
end

print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.')
