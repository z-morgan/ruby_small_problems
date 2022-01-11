def staggered_case(str, ignore_others = true )
  capitalize_this = true
  
  str.chars.map do |char|
    case capitalize_this
    when true 
      capitalize_this = false unless char.count('^a-zA-Z') > 0 && ignore_others == true
      char.upcase
    when false
      capitalize_this = true unless char.count('^a-zA-Z') > 0 && ignore_others == true
      char.downcase
    end
  end.join
end

puts staggered_case('I Love Launch School!', false) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'