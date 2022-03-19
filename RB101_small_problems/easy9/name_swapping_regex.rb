def swap_name(str)
  str.sub(/(\w+) (\w+)/, '\2, \1')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'