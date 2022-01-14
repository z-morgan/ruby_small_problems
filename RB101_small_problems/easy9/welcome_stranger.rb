=begin
method takes a name as an array and job data as a hash. it returns a string addressing the name, and referencing all components of the hash
input: array of strings and hash of strings
output: string

- the name array will contain 2 or more elements
- the elements must be adjoined with spaces to form the name
- the elemnets will alwasy be strings (both array and hash)
- the hash always contians two keys-- :title and :occupation
- the array elements will be in the correct order from the get-go

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

D: string
A:
join the name array elements into a string name
reference name with variable
initiate a string, containing the message, and using interpolation to inject the input values.
return the message string
=end

def greetings(name_arr, job_hsh)
  name_str = name_arr.join(' ')
  "Hello, #{name_str}! Nice to have a" \
  " #{job_hsh[:title]} #{job_hsh[:occupation]} around."
end
  
puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })