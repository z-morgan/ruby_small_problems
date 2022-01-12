def staggered_case(str, start = true)
  capitalize_this = start
  
  str.chars.map do |char|
    case capitalize_this
    when true 
      capitalize_this = false
      char.upcase
    when false
      capitalize_this = true
      char.downcase
    end
  end.join
end

puts staggered_case('I Love Launch School!', false) #== 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'