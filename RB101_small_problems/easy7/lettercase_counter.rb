# UPPERCASE = ('A'..'Z').to_a
# LOWERCASE = ('a'..'z').to_a

def letter_case_count(string)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each_with_object(hsh) do |char, hsh|
    if UPPERCASE.include?(char)
      hsh[:uppercase] += 1
    elsif LOWERCASE.include?(char)
      hsh[:lowercase] += 1
    else
      hsh[:neither] += 1
    end
  end
end

def letter_case_count(string)
  { lowercase: string.count('a-z'), uppercase: string.count('A-Z'), neither: string.count('^a-zA-Z') }
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
    


